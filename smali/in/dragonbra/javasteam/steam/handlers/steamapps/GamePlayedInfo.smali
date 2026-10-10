###### Class in.dragonbra.javasteam.steam.handlers.steamapps.GamePlayedInfo (in.dragonbra.javasteam.steam.handlers.steamapps.GamePlayedInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;
.super Ljava/lang/Object;
.source "GamePlayedInfo.kt"


# instance fields
.field private final betaName:Ljava/lang/String;

.field private final compatToolBuildId:I

.field private final compatToolCmd:Ljava/lang/String;

.field private final compatToolId:I

.field private final controllerConnectionType:I

.field private final controllerWorkshopFileId:J

.field private final deprecatedGameIpAddress:I

.field private final dlcContext:I

.field private final gameBuildId:I

.field private final gameDataBlob:[B

.field private final gameExtraInfo:Ljava/lang/String;

.field private final gameFlags:I

.field private final gameId:J

.field private final gameIpAddress:Ljava/net/InetAddress;

.field private final gameOsPlatform:I

.field private final gamePort:I

.field private final isSecure:Z

.field private final launchOptionType:I

.field private final launchSource:I

.field private final ownerId:I

.field private final primaryControllerType:I

.field private final primarySteamControllerSerial:Ljava/lang/String;

.field private final processId:I

.field private final processIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final steamIdGs:J

.field private final streamingProviderId:I

.field private final token:[B

.field private final totalNonSteamControllerCount:I

.field private final totalSteamControllerCount:I

.field private final vrHmdModel:Ljava/lang/String;

.field private final vrHmdRuntime:I

.field private final vrHmdVendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJIIZ[BLjava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIJIILjava/net/InetAddress;IIIILjava/lang/String;ILjava/lang/String;ILjava/util/List;)V
    .registers 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIIZ[B",
            "Ljava/lang/String;",
            "[BIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/net/InetAddress;",
            "IIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    move-object/from16 v5, p19

    move-object/from16 v6, p31

    move-object/from16 v7, p33

    move-object/from16 v8, p35

    const-string v9, "token"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "gameExtraInfo"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "vrHmdVendor"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "vrHmdModel"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "primarySteamControllerSerial"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "compatToolCmd"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "betaName"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "processIdList"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v9, p1

    .line 7
    iput-wide v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->steamIdGs:J

    move-wide v9, p3

    .line 8
    iput-wide v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameId:J

    move/from16 v9, p5

    .line 9
    iput v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->deprecatedGameIpAddress:I

    move/from16 v9, p6

    .line 10
    iput v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gamePort:I

    move/from16 v9, p7

    .line 11
    iput-boolean v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->isSecure:Z

    .line 12
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->token:[B

    .line 13
    iput-object v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameExtraInfo:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 14
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameDataBlob:[B

    move/from16 v1, p11

    .line 15
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processId:I

    move/from16 v1, p12

    .line 16
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->streamingProviderId:I

    move/from16 v1, p13

    .line 17
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameFlags:I

    move/from16 v1, p14

    .line 18
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->ownerId:I

    .line 19
    iput-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdVendor:Ljava/lang/String;

    .line 20
    iput-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdModel:Ljava/lang/String;

    move/from16 v1, p17

    .line 21
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchOptionType:I

    move/from16 v1, p18

    .line 22
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primaryControllerType:I

    .line 23
    iput-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primarySteamControllerSerial:Ljava/lang/String;

    move/from16 v1, p20

    .line 24
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalSteamControllerCount:I

    move/from16 v1, p21

    .line 25
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalNonSteamControllerCount:I

    move-wide/from16 v1, p22

    .line 26
    iput-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerWorkshopFileId:J

    move/from16 v1, p24

    .line 27
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchSource:I

    move/from16 v1, p25

    .line 28
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdRuntime:I

    move-object/from16 v1, p26

    .line 29
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameIpAddress:Ljava/net/InetAddress;

    move/from16 v1, p27

    .line 30
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerConnectionType:I

    move/from16 v1, p28

    .line 31
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameOsPlatform:I

    move/from16 v1, p29

    .line 32
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameBuildId:I

    move/from16 v1, p30

    .line 33
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolId:I

    .line 34
    iput-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolCmd:Ljava/lang/String;

    move/from16 v1, p32

    .line 35
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolBuildId:I

    .line 36
    iput-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->betaName:Ljava/lang/String;

    move/from16 v1, p34

    .line 37
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->dlcContext:I

    .line 38
    iput-object v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processIdList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JJIIZ[BLjava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIJIILjava/net/InetAddress;IIIILjava/lang/String;ILjava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 78

    move/from16 v0, p36

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_a

    move-wide v5, v2

    goto :goto_c

    :cond_a
    move-wide/from16 v5, p1

    :goto_c
    and-int/lit8 v1, v0, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_13

    move v9, v4

    goto :goto_15

    :cond_13
    move/from16 v9, p5

    :goto_15
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1b

    move v10, v4

    goto :goto_1d

    :cond_1b
    move/from16 v10, p6

    :goto_1d
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_23

    move v11, v4

    goto :goto_25

    :cond_23
    move/from16 v11, p7

    :goto_25
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2d

    .line 6
    new-array v1, v4, [B

    move-object v12, v1

    goto :goto_2f

    :cond_2d
    move-object/from16 v12, p8

    :goto_2f
    and-int/lit8 v1, v0, 0x40

    const-string v7, ""

    if-eqz v1, :cond_37

    move-object v13, v7

    goto :goto_39

    :cond_37
    move-object/from16 v13, p9

    :goto_39
    and-int/lit16 v1, v0, 0x80

    const/4 v8, 0x0

    if-eqz v1, :cond_40

    move-object v14, v8

    goto :goto_42

    :cond_40
    move-object/from16 v14, p10

    :goto_42
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_49

    move/from16 v16, v4

    goto :goto_4b

    :cond_49
    move/from16 v16, p12

    :goto_4b
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_52

    move/from16 v17, v4

    goto :goto_54

    :cond_52
    move/from16 v17, p13

    :goto_54
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_5b

    move-object/from16 v19, v7

    goto :goto_5d

    :cond_5b
    move-object/from16 v19, p15

    :goto_5d
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_64

    move-object/from16 v20, v7

    goto :goto_66

    :cond_64
    move-object/from16 v20, p16

    :goto_66
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_6d

    move/from16 v21, v4

    goto :goto_6f

    :cond_6d
    move/from16 v21, p17

    :goto_6f
    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v15, -0x1

    if-eqz v1, :cond_79

    move/from16 v22, v15

    goto :goto_7b

    :cond_79
    move/from16 v22, p18

    :goto_7b
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_83

    move-object/from16 v23, v7

    goto :goto_85

    :cond_83
    move-object/from16 v23, p19

    :goto_85
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8d

    move/from16 v24, v4

    goto :goto_8f

    :cond_8d
    move/from16 v24, p20

    :goto_8f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_97

    move/from16 v25, v4

    goto :goto_99

    :cond_97
    move/from16 v25, p21

    :goto_99
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a1

    move-wide/from16 v26, v2

    goto :goto_a3

    :cond_a1
    move-wide/from16 v26, p22

    :goto_a3
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_ab

    move/from16 v28, v4

    goto :goto_ad

    :cond_ab
    move/from16 v28, p24

    :goto_ad
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b5

    move/from16 v29, v4

    goto :goto_b7

    :cond_b5
    move/from16 v29, p25

    :goto_b7
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_bf

    move-object/from16 v30, v8

    goto :goto_c1

    :cond_bf
    move-object/from16 v30, p26

    :goto_c1
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c9

    move/from16 v31, v4

    goto :goto_cb

    :cond_c9
    move/from16 v31, p27

    :goto_cb
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d3

    move/from16 v32, v15

    goto :goto_d5

    :cond_d3
    move/from16 v32, p28

    :goto_d5
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_dd

    move/from16 v34, v4

    goto :goto_df

    :cond_dd
    move/from16 v34, p30

    :goto_df
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e7

    move-object/from16 v35, v7

    goto :goto_e9

    :cond_e7
    move-object/from16 v35, p31

    :goto_e9
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f1

    move/from16 v36, v4

    goto :goto_f3

    :cond_f1
    move/from16 v36, p32

    :goto_f3
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_fb

    move-object/from16 v37, v7

    goto :goto_fd

    :cond_fb
    move-object/from16 v37, p33

    :goto_fd
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_105

    move/from16 v38, v4

    goto :goto_107

    :cond_105
    move/from16 v38, p34

    :goto_107
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_113

    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v39, v0

    goto :goto_115

    :cond_113
    move-object/from16 v39, p35

    :goto_115
    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    move/from16 v15, p11

    move/from16 v18, p14

    move/from16 v33, p29

    .line 6
    invoke-direct/range {v4 .. v39}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;-><init>(JJIIZ[BLjava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIJIILjava/net/InetAddress;IIIILjava/lang/String;ILjava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;JJIIZ[BLjava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIJIILjava/net/InetAddress;IIIILjava/lang/String;ILjava/lang/String;ILjava/util/List;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;
    .registers 55

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p36

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-wide v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->steamIdGs:J

    goto :goto_d

    :cond_b
    move-wide/from16 v2, p1

    :goto_d
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_14

    iget-wide v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameId:J

    goto :goto_16

    :cond_14
    move-wide/from16 v4, p3

    :goto_16
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1d

    iget v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->deprecatedGameIpAddress:I

    goto :goto_1f

    :cond_1d
    move/from16 v6, p5

    :goto_1f
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_26

    iget v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gamePort:I

    goto :goto_28

    :cond_26
    move/from16 v7, p6

    :goto_28
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_2f

    iget-boolean v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->isSecure:Z

    goto :goto_31

    :cond_2f
    move/from16 v8, p7

    :goto_31
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_38

    iget-object v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->token:[B

    goto :goto_3a

    :cond_38
    move-object/from16 v9, p8

    :goto_3a
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_41

    iget-object v10, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameExtraInfo:Ljava/lang/String;

    goto :goto_43

    :cond_41
    move-object/from16 v10, p9

    :goto_43
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_4a

    iget-object v11, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameDataBlob:[B

    goto :goto_4c

    :cond_4a
    move-object/from16 v11, p10

    :goto_4c
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_53

    iget v12, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processId:I

    goto :goto_55

    :cond_53
    move/from16 v12, p11

    :goto_55
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_5c

    iget v13, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->streamingProviderId:I

    goto :goto_5e

    :cond_5c
    move/from16 v13, p12

    :goto_5e
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_65

    iget v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameFlags:I

    goto :goto_67

    :cond_65
    move/from16 v14, p13

    :goto_67
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_6e

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->ownerId:I

    goto :goto_70

    :cond_6e
    move/from16 v15, p14

    :goto_70
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_79

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdVendor:Ljava/lang/String;

    goto :goto_7b

    :cond_79
    move-object/from16 v15, p15

    :goto_7b
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_84

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdModel:Ljava/lang/String;

    goto :goto_86

    :cond_84
    move-object/from16 v15, p16

    :goto_86
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8f

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchOptionType:I

    goto :goto_91

    :cond_8f
    move/from16 v15, p17

    :goto_91
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_9d

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primaryControllerType:I

    goto :goto_9f

    :cond_9d
    move/from16 v15, p18

    :goto_9f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_aa

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primarySteamControllerSerial:Ljava/lang/String;

    goto :goto_ac

    :cond_aa
    move-object/from16 v15, p19

    :goto_ac
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_b7

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalSteamControllerCount:I

    goto :goto_b9

    :cond_b7
    move/from16 v15, p20

    :goto_b9
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_c4

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalNonSteamControllerCount:I

    goto :goto_c6

    :cond_c4
    move/from16 v15, p21

    :goto_c6
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p13, v14

    move/from16 p21, v15

    if-eqz v16, :cond_d3

    iget-wide v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerWorkshopFileId:J

    goto :goto_d5

    :cond_d3
    move-wide/from16 v14, p22

    :goto_d5
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-wide/from16 p22, v14

    if-eqz v16, :cond_e0

    iget v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchSource:I

    goto :goto_e2

    :cond_e0
    move/from16 v14, p24

    :goto_e2
    const/high16 v15, 0x200000

    and-int/2addr v15, v1

    if-eqz v15, :cond_ea

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdRuntime:I

    goto :goto_ec

    :cond_ea
    move/from16 v15, p25

    :goto_ec
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p25, v15

    if-eqz v16, :cond_f7

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameIpAddress:Ljava/net/InetAddress;

    goto :goto_f9

    :cond_f7
    move-object/from16 v15, p26

    :goto_f9
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_104

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerConnectionType:I

    goto :goto_106

    :cond_104
    move/from16 v15, p27

    :goto_106
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_111

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameOsPlatform:I

    goto :goto_113

    :cond_111
    move/from16 v15, p28

    :goto_113
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move/from16 p28, v15

    if-eqz v16, :cond_11e

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameBuildId:I

    goto :goto_120

    :cond_11e
    move/from16 v15, p29

    :goto_120
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move/from16 p29, v15

    if-eqz v16, :cond_12b

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolId:I

    goto :goto_12d

    :cond_12b
    move/from16 v15, p30

    :goto_12d
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move/from16 p30, v15

    if-eqz v16, :cond_138

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolCmd:Ljava/lang/String;

    goto :goto_13a

    :cond_138
    move-object/from16 v15, p31

    :goto_13a
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p31, v15

    if-eqz v16, :cond_145

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolBuildId:I

    goto :goto_147

    :cond_145
    move/from16 v15, p32

    :goto_147
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move/from16 p32, v15

    if-eqz v16, :cond_152

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->betaName:Ljava/lang/String;

    goto :goto_154

    :cond_152
    move-object/from16 v15, p33

    :goto_154
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p33, v15

    if-eqz v16, :cond_15f

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->dlcContext:I

    goto :goto_161

    :cond_15f
    move/from16 v15, p34

    :goto_161
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_16a

    iget-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processIdList:Ljava/util/List;

    goto :goto_16c

    :cond_16a
    move-object/from16 v1, p35

    :goto_16c
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p24, v14

    move/from16 p34, v15

    move-object/from16 p35, v1

    invoke-virtual/range {p0 .. p35}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->copy(JJIIZ[BLjava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIJIILjava/net/InetAddress;IIIILjava/lang/String;ILjava/lang/String;ILjava/util/List;)Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->steamIdGs:J

    return-wide v0
.end method

.method public final component10()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->streamingProviderId:I

    return p0
.end method

.method public final component11()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameFlags:I

    return p0
.end method

.method public final component12()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->ownerId:I

    return p0
.end method

.method public final component13()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdVendor:Ljava/lang/String;

    return-object p0
.end method

.method public final component14()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdModel:Ljava/lang/String;

    return-object p0
.end method

.method public final component15()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchOptionType:I

    return p0
.end method

.method public final component16()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primaryControllerType:I

    return p0
.end method

.method public final component17()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primarySteamControllerSerial:Ljava/lang/String;

    return-object p0
.end method

.method public final component18()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalSteamControllerCount:I

    return p0
.end method

.method public final component19()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalNonSteamControllerCount:I

    return p0
.end method

.method public final component2()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameId:J

    return-wide v0
.end method

.method public final component20()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerWorkshopFileId:J

    return-wide v0
.end method

.method public final component21()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchSource:I

    return p0
.end method

.method public final component22()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdRuntime:I

    return p0
.end method

.method public final component23()Ljava/net/InetAddress;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameIpAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final component24()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerConnectionType:I

    return p0
.end method

.method public final component25()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameOsPlatform:I

    return p0
.end method

.method public final component26()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameBuildId:I

    return p0
.end method

.method public final component27()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolId:I

    return p0
.end method

.method public final component28()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolCmd:Ljava/lang/String;

    return-object p0
.end method

.method public final component29()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolBuildId:I

    return p0
.end method

.method public final component3()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->deprecatedGameIpAddress:I

    return p0
.end method

.method public final component30()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->betaName:Ljava/lang/String;

    return-object p0
.end method

.method public final component31()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->dlcContext:I

    return p0
.end method

.method public final component32()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processIdList:Ljava/util/List;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gamePort:I

    return p0
.end method

.method public final component5()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->isSecure:Z

    return p0
.end method

.method public final component6()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->token:[B

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameExtraInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameDataBlob:[B

    return-object p0
.end method

.method public final component9()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processId:I

    return p0
.end method

.method public final copy(JJIIZ[BLjava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIJIILjava/net/InetAddress;IIIILjava/lang/String;ILjava/lang/String;ILjava/util/List;)Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;
    .registers 73
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIIZ[B",
            "Ljava/lang/String;",
            "[BIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/net/InetAddress;",
            "IIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;"
        }
    .end annotation

    .line 0
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move-wide/from16 v22, p22

    move/from16 v24, p24

    move/from16 v25, p25

    move-object/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move-object/from16 v31, p31

    move/from16 v32, p32

    move-object/from16 v33, p33

    move/from16 v34, p34

    move-object/from16 v35, p35

    const-string v0, "token"

    move-wide/from16 p0, v1

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameExtraInfo"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vrHmdVendor"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vrHmdModel"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primarySteamControllerSerial"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatToolCmd"

    move-object/from16 v1, p31

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "betaName"

    move-object/from16 v1, p33

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processIdList"

    move-object/from16 v1, p35

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v36, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;

    move-object/from16 v0, v36

    move-wide/from16 v1, p0

    invoke-direct/range {v0 .. v35}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;-><init>(JJIIZ[BLjava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIJIILjava/net/InetAddress;IIIILjava/lang/String;ILjava/lang/String;ILjava/util/List;)V

    return-object v36
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->steamIdGs:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->steamIdGs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameId:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->deprecatedGameIpAddress:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->deprecatedGameIpAddress:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gamePort:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gamePort:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->isSecure:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->isSecure:Z

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->token:[B

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->token:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v2

    :cond_3e
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameExtraInfo:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameExtraInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    :cond_49
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameDataBlob:[B

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameDataBlob:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    :cond_54
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processId:I

    if-eq v1, v3, :cond_5b

    return v2

    :cond_5b
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->streamingProviderId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->streamingProviderId:I

    if-eq v1, v3, :cond_62

    return v2

    :cond_62
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameFlags:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameFlags:I

    if-eq v1, v3, :cond_69

    return v2

    :cond_69
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->ownerId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->ownerId:I

    if-eq v1, v3, :cond_70

    return v2

    :cond_70
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdVendor:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdVendor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    return v2

    :cond_7b
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdModel:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdModel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    return v2

    :cond_86
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchOptionType:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchOptionType:I

    if-eq v1, v3, :cond_8d

    return v2

    :cond_8d
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primaryControllerType:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primaryControllerType:I

    if-eq v1, v3, :cond_94

    return v2

    :cond_94
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primarySteamControllerSerial:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primarySteamControllerSerial:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    return v2

    :cond_9f
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalSteamControllerCount:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalSteamControllerCount:I

    if-eq v1, v3, :cond_a6

    return v2

    :cond_a6
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalNonSteamControllerCount:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalNonSteamControllerCount:I

    if-eq v1, v3, :cond_ad

    return v2

    :cond_ad
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerWorkshopFileId:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerWorkshopFileId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b6

    return v2

    :cond_b6
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchSource:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchSource:I

    if-eq v1, v3, :cond_bd

    return v2

    :cond_bd
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdRuntime:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdRuntime:I

    if-eq v1, v3, :cond_c4

    return v2

    :cond_c4
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameIpAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameIpAddress:Ljava/net/InetAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    return v2

    :cond_cf
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerConnectionType:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerConnectionType:I

    if-eq v1, v3, :cond_d6

    return v2

    :cond_d6
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameOsPlatform:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameOsPlatform:I

    if-eq v1, v3, :cond_dd

    return v2

    :cond_dd
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameBuildId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameBuildId:I

    if-eq v1, v3, :cond_e4

    return v2

    :cond_e4
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolId:I

    if-eq v1, v3, :cond_eb

    return v2

    :cond_eb
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolCmd:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolCmd:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    return v2

    :cond_f6
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolBuildId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolBuildId:I

    if-eq v1, v3, :cond_fd

    return v2

    :cond_fd
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->betaName:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->betaName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_108

    return v2

    :cond_108
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->dlcContext:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->dlcContext:I

    if-eq v1, v3, :cond_10f

    return v2

    :cond_10f
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processIdList:Ljava/util/List;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processIdList:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11a

    return v2

    :cond_11a
    return v0
.end method

.method public final getBetaName()Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->betaName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCompatToolBuildId()I
    .registers 1

    .line 35
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolBuildId:I

    return p0
.end method

.method public final getCompatToolCmd()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolCmd:Ljava/lang/String;

    return-object p0
.end method

.method public final getCompatToolId()I
    .registers 1

    .line 33
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolId:I

    return p0
.end method

.method public final getControllerConnectionType()I
    .registers 1

    .line 30
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerConnectionType:I

    return p0
.end method

.method public final getControllerWorkshopFileId()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerWorkshopFileId:J

    return-wide v0
.end method

.method public final getDeprecatedGameIpAddress()I
    .registers 1

    .line 9
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->deprecatedGameIpAddress:I

    return p0
.end method

.method public final getDlcContext()I
    .registers 1

    .line 37
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->dlcContext:I

    return p0
.end method

.method public final getGameBuildId()I
    .registers 1

    .line 32
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameBuildId:I

    return p0
.end method

.method public final getGameDataBlob()[B
    .registers 1

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameDataBlob:[B

    return-object p0
.end method

.method public final getGameExtraInfo()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameExtraInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getGameFlags()I
    .registers 1

    .line 17
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameFlags:I

    return p0
.end method

.method public final getGameId()J
    .registers 3

    .line 8
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameId:J

    return-wide v0
.end method

.method public final getGameIpAddress()Ljava/net/InetAddress;
    .registers 1

    .line 29
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameIpAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final getGameOsPlatform()I
    .registers 1

    .line 31
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameOsPlatform:I

    return p0
.end method

.method public final getGamePort()I
    .registers 1

    .line 10
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gamePort:I

    return p0
.end method

.method public final getLaunchOptionType()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchOptionType:I

    return p0
.end method

.method public final getLaunchSource()I
    .registers 1

    .line 27
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchSource:I

    return p0
.end method

.method public final getOwnerId()I
    .registers 1

    .line 18
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->ownerId:I

    return p0
.end method

.method public final getPrimaryControllerType()I
    .registers 1

    .line 22
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primaryControllerType:I

    return p0
.end method

.method public final getPrimarySteamControllerSerial()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primarySteamControllerSerial:Ljava/lang/String;

    return-object p0
.end method

.method public final getProcessId()I
    .registers 1

    .line 15
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processId:I

    return p0
.end method

.method public final getProcessIdList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getSteamIdGs()J
    .registers 3

    .line 7
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->steamIdGs:J

    return-wide v0
.end method

.method public final getStreamingProviderId()I
    .registers 1

    .line 16
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->streamingProviderId:I

    return p0
.end method

.method public final getToken()[B
    .registers 1

    .line 12
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->token:[B

    return-object p0
.end method

.method public final getTotalNonSteamControllerCount()I
    .registers 1

    .line 25
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalNonSteamControllerCount:I

    return p0
.end method

.method public final getTotalSteamControllerCount()I
    .registers 1

    .line 24
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalSteamControllerCount:I

    return p0
.end method

.method public final getVrHmdModel()Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdModel:Ljava/lang/String;

    return-object p0
.end method

.method public final getVrHmdRuntime()I
    .registers 1

    .line 28
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdRuntime:I

    return p0
.end method

.method public final getVrHmdVendor()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdVendor:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 6

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->steamIdGs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->deprecatedGameIpAddress:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gamePort:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->isSecure:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->token:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameExtraInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameDataBlob:[B

    const/4 v2, 0x0

    if-nez v1, :cond_45

    move v1, v2

    goto :goto_49

    :cond_45
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_49
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->streamingProviderId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->ownerId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdVendor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchOptionType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primaryControllerType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primarySteamControllerSerial:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalSteamControllerCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalNonSteamControllerCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerWorkshopFileId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchSource:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdRuntime:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameIpAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_cf

    goto :goto_d3

    :cond_cf
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    :goto_d3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerConnectionType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameOsPlatform:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameBuildId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolCmd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolBuildId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->betaName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->dlcContext:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processIdList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isSecure()Z
    .registers 1

    .line 11
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->isSecure:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 37

    .line 0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->steamIdGs:J

    iget-wide v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameId:J

    iget v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->deprecatedGameIpAddress:I

    iget v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gamePort:I

    iget-boolean v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->isSecure:Z

    iget-object v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->token:[B

    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameExtraInfo:Ljava/lang/String;

    iget-object v10, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameDataBlob:[B

    invoke-static {v10}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processId:I

    iget v12, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->streamingProviderId:I

    iget v13, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameFlags:I

    iget v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->ownerId:I

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdVendor:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdModel:Ljava/lang/String;

    move-object/from16 v17, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchOptionType:I

    move/from16 v18, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primaryControllerType:I

    move/from16 v19, v15

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->primarySteamControllerSerial:Ljava/lang/String;

    move-object/from16 v20, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalSteamControllerCount:I

    move/from16 v21, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->totalNonSteamControllerCount:I

    move/from16 v22, v14

    move/from16 v23, v15

    iget-wide v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerWorkshopFileId:J

    move-wide/from16 v24, v14

    iget v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->launchSource:I

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->vrHmdRuntime:I

    move/from16 v26, v15

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameIpAddress:Ljava/net/InetAddress;

    move-object/from16 v27, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->controllerConnectionType:I

    move/from16 v28, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameOsPlatform:I

    move/from16 v29, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->gameBuildId:I

    move/from16 v30, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolId:I

    move/from16 v31, v15

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolCmd:Ljava/lang/String;

    move-object/from16 v32, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->compatToolBuildId:I

    move/from16 v33, v15

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->betaName:Ljava/lang/String;

    move-object/from16 v34, v15

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->dlcContext:I

    iget-object v0, v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->processIdList:Ljava/util/List;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v15

    const-string v15, "GamePlayedInfo(steamIdGs="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deprecatedGameIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gamePort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameExtraInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameDataBlob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", processId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamingProviderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vrHmdVendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vrHmdModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", launchOptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", primaryControllerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", primarySteamControllerSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalSteamControllerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalNonSteamControllerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", controllerWorkshopFileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", launchSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vrHmdRuntime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controllerConnectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameOsPlatform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameBuildId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compatToolId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compatToolCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", compatToolBuildId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", betaName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dlcContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
