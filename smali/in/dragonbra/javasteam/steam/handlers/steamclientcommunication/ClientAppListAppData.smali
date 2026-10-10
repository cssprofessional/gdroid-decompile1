###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.ClientAppListAppData (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.ClientAppListAppData)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;
.super Ljava/lang/Object;
.source "ClientAppListAppData.kt"


# instance fields
.field private final app:Ljava/lang/String;

.field private final appType:Ljava/lang/String;

.field private final appid:I

.field private final autoUpdate:Z

.field private final availableOnPlatform:Z

.field private final bytesDownloadRate:I

.field private final bytesDownloaded:J

.field private final bytesRequired:J

.field private final bytesStaged:J

.field private final bytesToDownload:J

.field private final bytesToStage:J

.field private final category:Ljava/lang/String;

.field private final changing:Z

.field private final dlcs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListDlcData;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadPaused:Z

.field private final estimatedSecondsRemaining:I

.field private final favorite:Z

.field private final installed:Z

.field private final numDownloading:I

.field private final queuePosition:I

.field private final rtTimeScheduled:I

.field private final running:Z

.field private final sourceBuildId:I

.field private final targetBuildId:I

.field private final uninstalling:Z

.field private final updatePercentage:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/util/List;ZZZZZZJJJIIIIZIZI)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJJ",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListDlcData;",
            ">;ZZZZZZJJJIIIIZIZI)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p11

    const-string v5, "app"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "category"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "appType"

    invoke-static {p4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "dlcs"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v5, p1

    .line 36
    iput v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appid:I

    .line 37
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->app:Ljava/lang/String;

    .line 38
    iput-object v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->category:Ljava/lang/String;

    .line 39
    iput-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appType:Ljava/lang/String;

    move v1, p5

    .line 40
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->numDownloading:I

    move v1, p6

    .line 41
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloadRate:I

    move-wide v1, p7

    .line 42
    iput-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloaded:J

    move-wide v1, p9

    .line 43
    iput-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToDownload:J

    .line 44
    iput-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->dlcs:Ljava/util/List;

    move/from16 v1, p12

    .line 45
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->favorite:Z

    move/from16 v1, p13

    .line 46
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->autoUpdate:Z

    move/from16 v1, p14

    .line 47
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->installed:Z

    move/from16 v1, p15

    .line 48
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->downloadPaused:Z

    move/from16 v1, p16

    .line 49
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->changing:Z

    move/from16 v1, p17

    .line 50
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->availableOnPlatform:Z

    move-wide/from16 v1, p18

    .line 51
    iput-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesStaged:J

    move-wide/from16 v1, p20

    .line 52
    iput-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToStage:J

    move-wide/from16 v1, p22

    .line 53
    iput-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesRequired:J

    move/from16 v1, p24

    .line 54
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->sourceBuildId:I

    move/from16 v1, p25

    .line 55
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->targetBuildId:I

    move/from16 v1, p26

    .line 56
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->estimatedSecondsRemaining:I

    move/from16 v1, p27

    .line 57
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->queuePosition:I

    move/from16 v1, p28

    .line 58
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->uninstalling:Z

    move/from16 v1, p29

    .line 59
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->rtTimeScheduled:I

    move/from16 v1, p30

    .line 60
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->running:Z

    move/from16 v1, p31

    .line 61
    iput v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->updatePercentage:I

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/util/List;ZZZZZZJJJIIIIZIZIILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;
    .registers 51

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p32

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appid:I

    goto :goto_d

    :cond_b
    move/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->app:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->category:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appType:Ljava/lang/String;

    goto :goto_28

    :cond_26
    move-object/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->numDownloading:I

    goto :goto_31

    :cond_2f
    move/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloadRate:I

    goto :goto_3a

    :cond_38
    move/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-wide v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloaded:J

    goto :goto_43

    :cond_41
    move-wide/from16 v8, p7

    :goto_43
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_4a

    iget-wide v10, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToDownload:J

    goto :goto_4c

    :cond_4a
    move-wide/from16 v10, p9

    :goto_4c
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_53

    iget-object v12, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->dlcs:Ljava/util/List;

    goto :goto_55

    :cond_53
    move-object/from16 v12, p11

    :goto_55
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_5c

    iget-boolean v13, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->favorite:Z

    goto :goto_5e

    :cond_5c
    move/from16 v13, p12

    :goto_5e
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_65

    iget-boolean v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->autoUpdate:Z

    goto :goto_67

    :cond_65
    move/from16 v14, p13

    :goto_67
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_6e

    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->installed:Z

    goto :goto_70

    :cond_6e
    move/from16 v15, p14

    :goto_70
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_79

    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->downloadPaused:Z

    goto :goto_7b

    :cond_79
    move/from16 v15, p15

    :goto_7b
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_84

    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->changing:Z

    goto :goto_86

    :cond_84
    move/from16 v15, p16

    :goto_86
    move/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8f

    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->availableOnPlatform:Z

    goto :goto_91

    :cond_8f
    move/from16 v15, p17

    :goto_91
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p13, v14

    move/from16 p17, v15

    if-eqz v16, :cond_9f

    iget-wide v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesStaged:J

    goto :goto_a1

    :cond_9f
    move-wide/from16 v14, p18

    :goto_a1
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p18, v14

    if-eqz v16, :cond_ac

    iget-wide v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToStage:J

    goto :goto_ae

    :cond_ac
    move-wide/from16 v14, p20

    :goto_ae
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-wide/from16 p20, v14

    if-eqz v16, :cond_b9

    iget-wide v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesRequired:J

    goto :goto_bb

    :cond_b9
    move-wide/from16 v14, p22

    :goto_bb
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-wide/from16 p22, v14

    if-eqz v16, :cond_c6

    iget v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->sourceBuildId:I

    goto :goto_c8

    :cond_c6
    move/from16 v14, p24

    :goto_c8
    const/high16 v15, 0x80000

    and-int/2addr v15, v1

    if-eqz v15, :cond_d0

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->targetBuildId:I

    goto :goto_d2

    :cond_d0
    move/from16 v15, p25

    :goto_d2
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p25, v15

    if-eqz v16, :cond_dd

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->estimatedSecondsRemaining:I

    goto :goto_df

    :cond_dd
    move/from16 v15, p26

    :goto_df
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p26, v15

    if-eqz v16, :cond_ea

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->queuePosition:I

    goto :goto_ec

    :cond_ea
    move/from16 v15, p27

    :goto_ec
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_f7

    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->uninstalling:Z

    goto :goto_f9

    :cond_f7
    move/from16 v15, p28

    :goto_f9
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move/from16 p28, v15

    if-eqz v16, :cond_104

    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->rtTimeScheduled:I

    goto :goto_106

    :cond_104
    move/from16 v15, p29

    :goto_106
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move/from16 p29, v15

    if-eqz v16, :cond_111

    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->running:Z

    goto :goto_113

    :cond_111
    move/from16 v15, p30

    :goto_113
    const/high16 v16, 0x2000000

    and-int v1, v1, v16

    if-eqz v1, :cond_11c

    iget v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->updatePercentage:I

    goto :goto_11e

    :cond_11c
    move/from16 v1, p31

    :goto_11e
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p24, v14

    move/from16 p30, v15

    move/from16 p31, v1

    invoke-virtual/range {p0 .. p31}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/util/List;ZZZZZZJJJIIIIZIZI)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appid:I

    return p0
.end method

.method public final component10()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->favorite:Z

    return p0
.end method

.method public final component11()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->autoUpdate:Z

    return p0
.end method

.method public final component12()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->installed:Z

    return p0
.end method

.method public final component13()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->downloadPaused:Z

    return p0
.end method

.method public final component14()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->changing:Z

    return p0
.end method

.method public final component15()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->availableOnPlatform:Z

    return p0
.end method

.method public final component16()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesStaged:J

    return-wide v0
.end method

.method public final component17()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToStage:J

    return-wide v0
.end method

.method public final component18()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesRequired:J

    return-wide v0
.end method

.method public final component19()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->sourceBuildId:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->app:Ljava/lang/String;

    return-object p0
.end method

.method public final component20()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->targetBuildId:I

    return p0
.end method

.method public final component21()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->estimatedSecondsRemaining:I

    return p0
.end method

.method public final component22()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->queuePosition:I

    return p0
.end method

.method public final component23()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->uninstalling:Z

    return p0
.end method

.method public final component24()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->rtTimeScheduled:I

    return p0
.end method

.method public final component25()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->running:Z

    return p0
.end method

.method public final component26()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->updatePercentage:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appType:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->numDownloading:I

    return p0
.end method

.method public final component6()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloadRate:I

    return p0
.end method

.method public final component7()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloaded:J

    return-wide v0
.end method

.method public final component8()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToDownload:J

    return-wide v0
.end method

.method public final component9()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListDlcData;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->dlcs:Ljava/util/List;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/util/List;ZZZZZZJJJIIIIZIZI)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;
    .registers 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJJ",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListDlcData;",
            ">;ZZZZZZJJJIIIIZIZI)",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;"
        }
    .end annotation

    .line 0
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v22, p22

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    const-string v0, "app"

    move/from16 p0, v1

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appType"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dlcs"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v32, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;

    move-object/from16 v0, v32

    move/from16 v1, p0

    invoke-direct/range {v0 .. v31}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/util/List;ZZZZZZJJJIIIIZIZI)V

    return-object v32
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appid:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appid:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->app:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->app:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->category:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->category:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appType:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->numDownloading:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->numDownloading:I

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloadRate:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloadRate:I

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloaded:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloaded:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4b

    return v2

    :cond_4b
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToDownload:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToDownload:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->dlcs:Ljava/util/List;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->dlcs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->favorite:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->favorite:Z

    if-eq v1, v3, :cond_66

    return v2

    :cond_66
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->autoUpdate:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->autoUpdate:Z

    if-eq v1, v3, :cond_6d

    return v2

    :cond_6d
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->installed:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->installed:Z

    if-eq v1, v3, :cond_74

    return v2

    :cond_74
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->downloadPaused:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->downloadPaused:Z

    if-eq v1, v3, :cond_7b

    return v2

    :cond_7b
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->changing:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->changing:Z

    if-eq v1, v3, :cond_82

    return v2

    :cond_82
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->availableOnPlatform:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->availableOnPlatform:Z

    if-eq v1, v3, :cond_89

    return v2

    :cond_89
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesStaged:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesStaged:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_92

    return v2

    :cond_92
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToStage:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToStage:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9b

    return v2

    :cond_9b
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesRequired:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesRequired:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a4

    return v2

    :cond_a4
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->sourceBuildId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->sourceBuildId:I

    if-eq v1, v3, :cond_ab

    return v2

    :cond_ab
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->targetBuildId:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->targetBuildId:I

    if-eq v1, v3, :cond_b2

    return v2

    :cond_b2
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->estimatedSecondsRemaining:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->estimatedSecondsRemaining:I

    if-eq v1, v3, :cond_b9

    return v2

    :cond_b9
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->queuePosition:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->queuePosition:I

    if-eq v1, v3, :cond_c0

    return v2

    :cond_c0
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->uninstalling:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->uninstalling:Z

    if-eq v1, v3, :cond_c7

    return v2

    :cond_c7
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->rtTimeScheduled:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->rtTimeScheduled:I

    if-eq v1, v3, :cond_ce

    return v2

    :cond_ce
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->running:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->running:Z

    if-eq v1, v3, :cond_d5

    return v2

    :cond_d5
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->updatePercentage:I

    iget p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->updatePercentage:I

    if-eq p0, p1, :cond_dc

    return v2

    :cond_dc
    return v0
.end method

.method public final getApp()Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->app:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppType()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appType:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppid()I
    .registers 1

    .line 36
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appid:I

    return p0
.end method

.method public final getAutoUpdate()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->autoUpdate:Z

    return p0
.end method

.method public final getAvailableOnPlatform()Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->availableOnPlatform:Z

    return p0
.end method

.method public final getBytesDownloadRate()I
    .registers 1

    .line 41
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloadRate:I

    return p0
.end method

.method public final getBytesDownloaded()J
    .registers 3

    .line 42
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloaded:J

    return-wide v0
.end method

.method public final getBytesRequired()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesRequired:J

    return-wide v0
.end method

.method public final getBytesStaged()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesStaged:J

    return-wide v0
.end method

.method public final getBytesToDownload()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToDownload:J

    return-wide v0
.end method

.method public final getBytesToStage()J
    .registers 3

    .line 52
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToStage:J

    return-wide v0
.end method

.method public final getCategory()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final getChanging()Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->changing:Z

    return p0
.end method

.method public final getDlcs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListDlcData;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->dlcs:Ljava/util/List;

    return-object p0
.end method

.method public final getDownloadPaused()Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->downloadPaused:Z

    return p0
.end method

.method public final getEstimatedSecondsRemaining()I
    .registers 1

    .line 56
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->estimatedSecondsRemaining:I

    return p0
.end method

.method public final getFavorite()Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->favorite:Z

    return p0
.end method

.method public final getInstalled()Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->installed:Z

    return p0
.end method

.method public final getNumDownloading()I
    .registers 1

    .line 40
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->numDownloading:I

    return p0
.end method

.method public final getQueuePosition()I
    .registers 1

    .line 57
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->queuePosition:I

    return p0
.end method

.method public final getRtTimeScheduled()I
    .registers 1

    .line 59
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->rtTimeScheduled:I

    return p0
.end method

.method public final getRunning()Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->running:Z

    return p0
.end method

.method public final getSourceBuildId()I
    .registers 1

    .line 54
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->sourceBuildId:I

    return p0
.end method

.method public final getTargetBuildId()I
    .registers 1

    .line 55
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->targetBuildId:I

    return p0
.end method

.method public final getUninstalling()Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->uninstalling:Z

    return p0
.end method

.method public final getUpdatePercentage()I
    .registers 1

    .line 61
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->updatePercentage:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->app:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->numDownloading:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloadRate:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloaded:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToDownload:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->dlcs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->favorite:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->autoUpdate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->installed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->downloadPaused:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->changing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->availableOnPlatform:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesStaged:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToStage:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesRequired:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->sourceBuildId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->targetBuildId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->estimatedSecondsRemaining:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->queuePosition:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->uninstalling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->rtTimeScheduled:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->running:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->updatePercentage:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 33

    move-object/from16 v0, p0

    .line 65
    iget v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appid:I

    .line 66
    iget-object v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->app:Ljava/lang/String;

    .line 67
    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->category:Ljava/lang/String;

    .line 68
    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->appType:Ljava/lang/String;

    .line 69
    iget v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->numDownloading:I

    .line 70
    iget v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloadRate:I

    .line 71
    iget-wide v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesDownloaded:J

    .line 72
    iget-wide v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToDownload:J

    .line 73
    iget-object v11, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->dlcs:Ljava/util/List;

    .line 74
    iget-boolean v12, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->favorite:Z

    .line 75
    iget-boolean v13, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->autoUpdate:Z

    .line 76
    iget-boolean v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->installed:Z

    .line 77
    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->downloadPaused:Z

    move/from16 v16, v15

    .line 78
    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->changing:Z

    move/from16 v17, v15

    .line 79
    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->availableOnPlatform:Z

    move/from16 v18, v14

    move/from16 v19, v15

    .line 80
    iget-wide v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesStaged:J

    move-wide/from16 v20, v14

    .line 81
    iget-wide v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesToStage:J

    move-wide/from16 v22, v14

    .line 82
    iget-wide v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->bytesRequired:J

    move-wide/from16 v24, v14

    .line 83
    iget v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->sourceBuildId:I

    .line 84
    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->targetBuildId:I

    move/from16 v26, v15

    .line 85
    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->estimatedSecondsRemaining:I

    move/from16 v27, v15

    .line 86
    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->queuePosition:I

    move/from16 v28, v15

    .line 87
    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->uninstalling:Z

    move/from16 v29, v15

    .line 88
    iget v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->rtTimeScheduled:I

    move/from16 v30, v15

    .line 89
    iget-boolean v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->running:Z

    .line 90
    iget v0, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientAppListAppData;->updatePercentage:I

    move/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v15

    const-string v15, "\n            ClientAppListAppData(\n                appid="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                app=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\n                category=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\n                appType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\n                numDownloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                bytesDownloadRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                bytesDownloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n                bytesToDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n                dlcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n                favorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n                autoUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n                installed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n                downloadPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n                changing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n                availableOnPlatform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n                bytesStaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n                bytesToStage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n                bytesRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n                sourceBuildId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                targetBuildId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                estimatedSecondsRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                queuePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                uninstalling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n                rtTimeScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n                running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n                updatePercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n            )\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
