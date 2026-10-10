###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.cache.User (in.dragonbra.javasteam.steam.handlers.steamfriends.cache.User)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;
.super Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
.source "FriendCache.kt"


# instance fields
.field private gameAppID:I

.field private gameID:Lin/dragonbra/javasteam/types/GameID;

.field private gameName:Ljava/lang/String;

.field private personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

.field private personaStateFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EPersonaStateFlag;",
            ">;"
        }
    .end annotation
.end field

.field private relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 0
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;-><init>(Lin/dragonbra/javasteam/enums/EFriendRelationship;Lin/dragonbra/javasteam/enums/EPersonaState;Ljava/util/EnumSet;ILin/dragonbra/javasteam/types/GameID;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/enums/EFriendRelationship;Lin/dragonbra/javasteam/enums/EPersonaState;Ljava/util/EnumSet;ILin/dragonbra/javasteam/types/GameID;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/enums/EFriendRelationship;",
            "Lin/dragonbra/javasteam/enums/EPersonaState;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EPersonaStateFlag;",
            ">;I",
            "Lin/dragonbra/javasteam/types/GameID;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "personaState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameID"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;-><init>()V

    .line 19
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    .line 20
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    .line 21
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaStateFlags:Ljava/util/EnumSet;

    .line 22
    iput p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameAppID:I

    .line 23
    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameID:Lin/dragonbra/javasteam/types/GameID;

    .line 24
    iput-object p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/enums/EFriendRelationship;Lin/dragonbra/javasteam/enums/EPersonaState;Ljava/util/EnumSet;ILin/dragonbra/javasteam/types/GameID;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    .line 20
    sget-object p2, Lin/dragonbra/javasteam/enums/EPersonaState;->Offline:Lin/dragonbra/javasteam/enums/EPersonaState;

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_16

    const/4 p4, 0x0

    :cond_16
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_22

    .line 23
    new-instance p5, Lin/dragonbra/javasteam/types/GameID;

    const-wide/16 v1, 0x0

    const/4 p8, 0x1

    invoke-direct {p5, v1, v2, p8, v0}, Lin/dragonbra/javasteam/types/GameID;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_22
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_27

    move-object p6, v0

    .line 18
    :cond_27
    invoke-direct/range {p0 .. p6}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;-><init>(Lin/dragonbra/javasteam/enums/EFriendRelationship;Lin/dragonbra/javasteam/enums/EPersonaState;Ljava/util/EnumSet;ILin/dragonbra/javasteam/types/GameID;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;Lin/dragonbra/javasteam/enums/EFriendRelationship;Lin/dragonbra/javasteam/enums/EPersonaState;Ljava/util/EnumSet;ILin/dragonbra/javasteam/types/GameID;Ljava/lang/String;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;
    .registers 13

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaStateFlags:Ljava/util/EnumSet;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameAppID:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameID:Lin/dragonbra/javasteam/types/GameID;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameName:Ljava/lang/String;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->copy(Lin/dragonbra/javasteam/enums/EFriendRelationship;Lin/dragonbra/javasteam/enums/EPersonaState;Ljava/util/EnumSet;ILin/dragonbra/javasteam/types/GameID;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lin/dragonbra/javasteam/enums/EFriendRelationship;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    return-object p0
.end method

.method public final component2()Lin/dragonbra/javasteam/enums/EPersonaState;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    return-object p0
.end method

.method public final component3()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EPersonaStateFlag;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaStateFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameAppID:I

    return p0
.end method

.method public final component5()Lin/dragonbra/javasteam/types/GameID;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameID:Lin/dragonbra/javasteam/types/GameID;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lin/dragonbra/javasteam/enums/EFriendRelationship;Lin/dragonbra/javasteam/enums/EPersonaState;Ljava/util/EnumSet;ILin/dragonbra/javasteam/types/GameID;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/enums/EFriendRelationship;",
            "Lin/dragonbra/javasteam/enums/EPersonaState;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EPersonaStateFlag;",
            ">;I",
            "Lin/dragonbra/javasteam/types/GameID;",
            "Ljava/lang/String;",
            ")",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;"
        }
    .end annotation

    .line 0
    const-string p0, "personaState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "gameID"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;-><init>(Lin/dragonbra/javasteam/enums/EFriendRelationship;Lin/dragonbra/javasteam/enums/EPersonaState;Ljava/util/EnumSet;ILin/dragonbra/javasteam/types/GameID;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaStateFlags:Ljava/util/EnumSet;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaStateFlags:Ljava/util/EnumSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameAppID:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameAppID:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameID:Lin/dragonbra/javasteam/types/GameID;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameID:Lin/dragonbra/javasteam/types/GameID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameName:Ljava/lang/String;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    return v2

    :cond_42
    return v0
.end method

.method public final getGameAppID()I
    .registers 1

    .line 22
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameAppID:I

    return p0
.end method

.method public final getGameID()Lin/dragonbra/javasteam/types/GameID;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameID:Lin/dragonbra/javasteam/types/GameID;

    return-object p0
.end method

.method public final getGameName()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPersonaState()Lin/dragonbra/javasteam/enums/EPersonaState;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    return-object p0
.end method

.method public final getPersonaStateFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EPersonaStateFlag;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaStateFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getRelationship()Lin/dragonbra/javasteam/enums/EFriendRelationship;
    .registers 1

    .line 19
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaStateFlags:Ljava/util/EnumSet;

    if-nez v2, :cond_1c

    move v2, v1

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameAppID:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameID:Lin/dragonbra/javasteam/types/GameID;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/types/GameID;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameName:Ljava/lang/String;

    if-nez p0, :cond_3a

    goto :goto_3e

    :cond_3a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3e
    add-int/2addr v0, v1

    return v0
.end method

.method public final setGameAppID(I)V
    .registers 2

    .line 22
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameAppID:I

    return-void
.end method

.method public final setGameID(Lin/dragonbra/javasteam/types/GameID;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameID:Lin/dragonbra/javasteam/types/GameID;

    return-void
.end method

.method public final setGameName(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameName:Ljava/lang/String;

    return-void
.end method

.method public final setPersonaState(Lin/dragonbra/javasteam/enums/EPersonaState;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    return-void
.end method

.method public final setPersonaStateFlags(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EPersonaStateFlag;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaStateFlags:Ljava/util/EnumSet;

    return-void
.end method

.method public final setRelationship(Lin/dragonbra/javasteam/enums/EFriendRelationship;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaState:Lin/dragonbra/javasteam/enums/EPersonaState;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->personaStateFlags:Ljava/util/EnumSet;

    iget v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameAppID:I

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameID:Lin/dragonbra/javasteam/types/GameID;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;->gameName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User(relationship="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", personaState="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", personaStateFlags="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", gameAppID="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", gameID="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", gameName="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
