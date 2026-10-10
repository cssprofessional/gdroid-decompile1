###### Class in.dragonbra.javasteam.enums.EClientPersonaStateFlag (in.dragonbra.javasteam.enums.EClientPersonaStateFlag)
.class public final enum Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;
.super Ljava/lang/Enum;
.source "EClientPersonaStateFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum Broadcast:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum ClanData:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum Facebook:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum GameDataBlob:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum GameExtraInfo:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum LastSeen:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum PlayerName:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum Presence:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum QueryPort:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum RichPresence:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum SourceID:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum Status:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum UserClanRank:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

.field public static final enum Watching:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;
    .registers 14

    .line 5
    sget-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Status:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v1, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->PlayerName:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v2, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->QueryPort:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v3, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->SourceID:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v4, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Presence:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v5, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->LastSeen:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v6, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->UserClanRank:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v7, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->GameExtraInfo:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v8, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->GameDataBlob:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v9, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->ClanData:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v10, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Facebook:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v11, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->RichPresence:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v12, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Broadcast:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    sget-object v13, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Watching:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    filled-new-array/range {v0 .. v13}, [Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const-string v1, "Status"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Status:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 9
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const-string v1, "PlayerName"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->PlayerName:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 11
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const-string v1, "QueryPort"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->QueryPort:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 13
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const-string v1, "SourceID"

    const/4 v2, 0x3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->SourceID:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 15
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const-string v1, "Presence"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Presence:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 17
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const/4 v1, 0x5

    const/16 v2, 0x40

    const-string v3, "LastSeen"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->LastSeen:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 19
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const/4 v1, 0x6

    const/16 v2, 0x80

    const-string v3, "UserClanRank"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->UserClanRank:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 21
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const/4 v1, 0x7

    const/16 v2, 0x100

    const-string v3, "GameExtraInfo"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->GameExtraInfo:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 23
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const-string v1, "GameDataBlob"

    const/16 v2, 0x200

    invoke-direct {v0, v1, v4, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->GameDataBlob:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 25
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const/16 v1, 0x9

    const/16 v2, 0x400

    const-string v3, "ClanData"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->ClanData:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 27
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const/16 v1, 0xa

    const/16 v2, 0x800

    const-string v3, "Facebook"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Facebook:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 29
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const/16 v1, 0xb

    const/16 v2, 0x1000

    const-string v3, "RichPresence"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->RichPresence:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 31
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const/16 v1, 0xc

    const/16 v2, 0x2000

    const-string v3, "Broadcast"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Broadcast:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 33
    new-instance v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    const/16 v1, 0xd

    const/16 v2, 0x4000

    const-string v3, "Watching"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Watching:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 5
    invoke-static {}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->$values()[Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->$VALUES:[Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->code:I

    return-void
.end method

.method public static code(Ljava/util/EnumSet;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;)I"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 60
    iget v1, v1, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->code:I

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public static from(I)Ljava/util/EnumSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;"
        }
    .end annotation

    .line 48
    const-class v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 49
    invoke-static {}, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->values()[Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 50
    iget v5, v4, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->code:I

    and-int v6, v5, p0

    if-ne v6, v5, :cond_19

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 5
    const-class v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;
    .registers 1

    .line 5
    sget-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->$VALUES:[Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 44
    iget p0, p0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->code:I

    return p0
.end method
