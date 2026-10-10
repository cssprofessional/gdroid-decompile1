###### Class in.dragonbra.javasteam.steam.handlers.steamuserstats.AchievementBlocks (in.dragonbra.javasteam.steam.handlers.steamuserstats.AchievementBlocks)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;
.super Ljava/lang/Object;
.source "AchievementBlocks.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAchievementBlocks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AchievementBlocks.kt\nin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1761#2,3:59\n295#2,2:62\n*S KotlinDebug\n*F\n+ 1 AchievementBlocks.kt\nin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks\n*L\n35#1:59,3\n43#1:62,2\n*E\n"
.end annotation


# instance fields
.field private final achievementId:I

.field private final description:Ljava/lang/String;

.field private final displayName:Ljava/lang/String;

.field private final hidden:Z

.field private final icon:Ljava/lang/String;

.field private final iconGray:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final unlockTime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "unlockTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->achievementId:I

    .line 22
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->name:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->displayName:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->description:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->icon:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->iconGray:Ljava/lang/String;

    .line 28
    iput-boolean p8, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->hidden:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 23

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v6, v2

    goto :goto_a

    :cond_9
    move-object v6, p3

    :goto_a
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_10

    move-object v7, v2

    goto :goto_12

    :cond_10
    move-object/from16 v7, p4

    :goto_12
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_18

    move-object v8, v2

    goto :goto_1a

    :cond_18
    move-object/from16 v8, p5

    :goto_1a
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_20

    move-object v9, v2

    goto :goto_22

    :cond_20
    move-object/from16 v9, p6

    :goto_22
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_28

    move-object v10, v2

    goto :goto_2a

    :cond_28
    move-object/from16 v10, p7

    :goto_2a
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    move v11, v0

    goto :goto_33

    :cond_31
    move/from16 v11, p8

    :goto_33
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    .line 20
    invoke-direct/range {v3 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;
    .registers 20

    .line 0
    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->achievementId:I

    goto :goto_b

    :cond_a
    move v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->name:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->displayName:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->description:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->icon:Ljava/lang/String;

    goto :goto_33

    :cond_32
    move-object v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->iconGray:Ljava/lang/String;

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->hidden:Z

    goto :goto_45

    :cond_43
    move/from16 v1, p8

    :goto_45
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->copy(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->achievementId:I

    return p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->iconGray:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->hidden:Z

    return p0
.end method

.method public final copy(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;"
        }
    .end annotation

    .line 0
    const-string v0, "unlockTime"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;

    move-object v1, v0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->achievementId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->achievementId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->name:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->displayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->description:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->icon:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->icon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->iconGray:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->iconGray:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->hidden:Z

    iget-boolean p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->hidden:Z

    if-eq p0, p1, :cond_5c

    return v2

    :cond_5c
    return v0
.end method

.method public final getAchievementId()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->achievementId:I

    return p0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFormattedUnlockTime()Ljava/lang/String;
    .registers 7

    .line 51
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->getUnlockTimestamp()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/util/Date;

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHidden()Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->hidden:Z

    return p0
.end method

.method public final getIcon()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconGray()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->iconGray:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getUnlockTime()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    return-object p0
.end method

.method public final getUnlockTimestamp()I
    .registers 3

    .line 43
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    .line 295
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_6

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 43
    :goto_1b
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->achievementId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->displayName:Ljava/lang/String;

    if-nez v1, :cond_25

    move v1, v2

    goto :goto_29

    :cond_25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_29
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->description:Ljava/lang/String;

    if-nez v1, :cond_32

    move v1, v2

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->icon:Ljava/lang/String;

    if-nez v1, :cond_3f

    move v1, v2

    goto :goto_43

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_43
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->iconGray:Ljava/lang/String;

    if-nez v1, :cond_4b

    goto :goto_4f

    :cond_4b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->hidden:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isUnlocked()Z
    .registers 3

    .line 35
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 1761
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_23

    .line 1762
    :cond_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_23
    :goto_23
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->achievementId:I

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->unlockTime:Ljava/util/List;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->name:Ljava/lang/String;

    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->displayName:Ljava/lang/String;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->description:Ljava/lang/String;

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->icon:Ljava/lang/String;

    iget-object v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->iconGray:Ljava/lang/String;

    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->hidden:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AchievementBlocks(achievementId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", unlockTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", displayName="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", iconGray="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hidden="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
