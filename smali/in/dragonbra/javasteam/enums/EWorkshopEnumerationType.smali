###### Class in.dragonbra.javasteam.enums.EWorkshopEnumerationType (in.dragonbra.javasteam.enums.EWorkshopEnumerationType)
.class public final enum Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;
.super Ljava/lang/Enum;
.source "EWorkshopEnumerationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

.field public static final enum ContentByFriends:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

.field public static final enum FavoriteOfFriends:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

.field public static final enum RankedByVote:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

.field public static final enum Recent:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

.field public static final enum RecentFromFollowedUsers:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

.field public static final enum Trending:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

.field public static final enum VotedByFriends:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;
    .registers 7

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->RankedByVote:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    sget-object v1, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->Recent:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    sget-object v2, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->Trending:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    sget-object v3, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->FavoriteOfFriends:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    sget-object v4, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->VotedByFriends:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    sget-object v5, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->ContentByFriends:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    sget-object v6, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->RecentFromFollowedUsers:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    filled-new-array/range {v0 .. v6}, [Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    const-string v1, "RankedByVote"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->RankedByVote:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    const-string v1, "Recent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->Recent:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    const-string v1, "Trending"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->Trending:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    const-string v1, "FavoriteOfFriends"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->FavoriteOfFriends:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    const-string v1, "VotedByFriends"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->VotedByFriends:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    const-string v1, "ContentByFriends"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->ContentByFriends:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    const-string v1, "RecentFromFollowedUsers"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->RecentFromFollowedUsers:Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->$values()[Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->$VALUES:[Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;
    .registers 6

    .line 33
    invoke-static {}, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->values()[Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 34
    iget v4, v3, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->$VALUES:[Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 29
    iget p0, p0, Lin/dragonbra/javasteam/enums/EWorkshopEnumerationType;->code:I

    return p0
.end method
