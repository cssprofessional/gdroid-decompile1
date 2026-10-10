###### Class in.dragonbra.javasteam.steam.handlers.steamuser.LogOnDetails (in.dragonbra.javasteam.steam.handlers.steamuser.LogOnDetails)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;
.super Ljava/lang/Object;
.source "LogOnDetails.kt"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private accountID:J

.field private accountInstance:J

.field private authCode:Ljava/lang/String;

.field private cellID:Ljava/lang/Integer;

.field private chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

.field private clientLanguage:Ljava/lang/String;

.field private clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

.field private gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field private isSteamDeck:Z

.field private loginID:Ljava/lang/Integer;

.field private machineName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private requestSteam2Ticket:Z

.field private shouldRememberPassword:Z

.field private twoFactorCode:Ljava/lang/String;

.field private uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 24

    .line 0
    move-object/from16 v0, p0

    const v21, 0x3ffff

    const/16 v22, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v22}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJZLin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;Lin/dragonbra/javasteam/enums/EUIMode;Lin/dragonbra/javasteam/enums/EGamingDeviceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJZLin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;Lin/dragonbra/javasteam/enums/EUIMode;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Z)V
    .registers 31

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    move-object/from16 v6, p18

    move-object/from16 v7, p19

    const-string v8, "username"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "clientOSType"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "clientLanguage"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "machineName"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "chatMode"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "uiMode"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "gamingDeviceType"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->username:Ljava/lang/String;

    move-object v1, p2

    .line 42
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->password:Ljava/lang/String;

    move-object v1, p3

    .line 43
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->cellID:Ljava/lang/Integer;

    move-object v1, p4

    .line 44
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->loginID:Ljava/lang/Integer;

    move-object v1, p5

    .line 45
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->authCode:Ljava/lang/String;

    move-object/from16 v1, p6

    .line 46
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->twoFactorCode:Ljava/lang/String;

    move/from16 v1, p7

    .line 47
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->shouldRememberPassword:Z

    move-object/from16 v1, p8

    .line 48
    iput-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accessToken:Ljava/lang/String;

    move-wide/from16 v8, p9

    .line 49
    iput-wide v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountInstance:J

    move-wide/from16 v8, p11

    .line 50
    iput-wide v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountID:J

    move/from16 v1, p13

    .line 51
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->requestSteam2Ticket:Z

    .line 52
    iput-object v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    .line 53
    iput-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientLanguage:Ljava/lang/String;

    .line 54
    iput-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->machineName:Ljava/lang/String;

    .line 55
    iput-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    .line 56
    iput-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

    .line 57
    iput-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    move/from16 v1, p20

    .line 58
    iput-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJZLin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;Lin/dragonbra/javasteam/enums/EUIMode;Lin/dragonbra/javasteam/enums/EGamingDeviceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 42

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    .line 41
    const-string v1, ""

    goto :goto_b

    :cond_9
    move-object/from16 v1, p1

    :goto_b
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    move-object v2, v3

    goto :goto_14

    :cond_12
    move-object/from16 v2, p2

    :goto_14
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1a

    move-object v4, v3

    goto :goto_1c

    :cond_1a
    move-object/from16 v4, p3

    :goto_1c
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_22

    move-object v5, v3

    goto :goto_24

    :cond_22
    move-object/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_2a

    move-object v6, v3

    goto :goto_2c

    :cond_2a
    move-object/from16 v6, p5

    :goto_2c
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_32

    move-object v7, v3

    goto :goto_34

    :cond_32
    move-object/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_3a

    const/4 v8, 0x0

    goto :goto_3c

    :cond_3a
    move/from16 v8, p7

    :goto_3c
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_41

    goto :goto_43

    :cond_41
    move-object/from16 v3, p8

    :goto_43
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_4a

    const-wide/16 v10, 0x1

    goto :goto_4c

    :cond_4a
    move-wide/from16 v10, p9

    :goto_4c
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_53

    const-wide/16 v12, 0x0

    goto :goto_55

    :cond_53
    move-wide/from16 v12, p11

    :goto_55
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_5b

    const/4 v14, 0x0

    goto :goto_5d

    :cond_5b
    move/from16 v14, p13

    :goto_5d
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_6b

    .line 52
    invoke-static {}, Lin/dragonbra/javasteam/util/Utils;->getOSType()Lin/dragonbra/javasteam/enums/EOSType;

    move-result-object v15

    const-string v9, "getOSType(...)"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6d

    :cond_6b
    move-object/from16 v15, p14

    :goto_6d
    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_74

    .line 53
    const-string v9, "english"

    goto :goto_76

    :cond_74
    move-object/from16 v9, p15

    :goto_76
    move-object/from16 p15, v9

    and-int/lit16 v9, v0, 0x2000

    if-eqz v9, :cond_89

    const/4 v9, 0x1

    .line 54
    invoke-static {v9}, Lin/dragonbra/javasteam/util/HardwareUtils;->getMachineName(Z)Ljava/lang/String;

    move-result-object v9

    move-object/from16 p14, v15

    const-string v15, "getMachineName(...)"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8d

    :cond_89
    move-object/from16 p14, v15

    move-object/from16 v9, p16

    :goto_8d
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_94

    .line 55
    sget-object v15, Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;->DEFAULT:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    goto :goto_96

    :cond_94
    move-object/from16 v15, p17

    :goto_96
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_a0

    .line 56
    sget-object v16, Lin/dragonbra/javasteam/enums/EUIMode;->Unknown:Lin/dragonbra/javasteam/enums/EUIMode;

    goto :goto_a2

    :cond_a0
    move-object/from16 v16, p18

    :goto_a2
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_ab

    .line 57
    sget-object v17, Lin/dragonbra/javasteam/enums/EGamingDeviceType;->Unknown:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    goto :goto_ad

    :cond_ab
    move-object/from16 v17, p19

    :goto_ad
    const/high16 v18, 0x20000

    and-int v0, v0, v18

    if-eqz v0, :cond_b5

    const/4 v0, 0x0

    goto :goto_b7

    :cond_b5
    move/from16 v0, p20

    :goto_b7
    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v3

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move/from16 p13, v14

    move-object/from16 p16, v9

    move-object/from16 p17, v15

    move-object/from16 p18, v16

    move-object/from16 p19, v17

    move/from16 p20, v0

    .line 40
    invoke-direct/range {p0 .. p20}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJZLin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;Lin/dragonbra/javasteam/enums/EUIMode;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJZLin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;Lin/dragonbra/javasteam/enums/EUIMode;Lin/dragonbra/javasteam/enums/EGamingDeviceType;ZILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;
    .registers 40

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->username:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->password:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->cellID:Ljava/lang/Integer;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->loginID:Ljava/lang/Integer;

    goto :goto_28

    :cond_26
    move-object/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->authCode:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->twoFactorCode:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-boolean v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->shouldRememberPassword:Z

    goto :goto_43

    :cond_41
    move/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accessToken:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-wide v10, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountInstance:J

    goto :goto_55

    :cond_53
    move-wide/from16 v10, p9

    :goto_55
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_5c

    iget-wide v12, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountID:J

    goto :goto_5e

    :cond_5c
    move-wide/from16 v12, p11

    :goto_5e
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_65

    iget-boolean v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->requestSteam2Ticket:Z

    goto :goto_67

    :cond_65
    move/from16 v14, p13

    :goto_67
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_6e

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    goto :goto_70

    :cond_6e
    move-object/from16 v15, p14

    :goto_70
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_79

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientLanguage:Ljava/lang/String;

    goto :goto_7b

    :cond_79
    move-object/from16 v15, p15

    :goto_7b
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_84

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->machineName:Ljava/lang/String;

    goto :goto_86

    :cond_84
    move-object/from16 v15, p16

    :goto_86
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8f

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    goto :goto_91

    :cond_8f
    move-object/from16 v15, p17

    :goto_91
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_9d

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

    goto :goto_9f

    :cond_9d
    move-object/from16 v15, p18

    :goto_9f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_aa

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    goto :goto_ac

    :cond_aa
    move-object/from16 v15, p19

    :goto_ac
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_b5

    iget-boolean v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck:Z

    goto :goto_b7

    :cond_b5
    move/from16 v1, p20

    :goto_b7
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move/from16 p13, v14

    move-object/from16 p19, v15

    move/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJZLin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;Lin/dragonbra/javasteam/enums/EUIMode;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Z)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic isSteamDeck$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->username:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountID:J

    return-wide v0
.end method

.method public final component11()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->requestSteam2Ticket:Z

    return p0
.end method

.method public final component12()Lin/dragonbra/javasteam/enums/EOSType;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final component14()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public final component15()Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    return-object p0
.end method

.method public final component16()Lin/dragonbra/javasteam/enums/EUIMode;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

    return-object p0
.end method

.method public final component17()Lin/dragonbra/javasteam/enums/EGamingDeviceType;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    return-object p0
.end method

.method public final component18()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck:Z

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->cellID:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->loginID:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->twoFactorCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->shouldRememberPassword:Z

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountInstance:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJZLin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;Lin/dragonbra/javasteam/enums/EUIMode;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Z)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;
    .registers 43

    .line 0
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    const-string v0, "username"

    move-object/from16 p0, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientOSType"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientLanguage"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "machineName"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatMode"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiMode"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gamingDeviceType"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v21, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v20}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJZLin/dragonbra/javasteam/enums/EOSType;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;Lin/dragonbra/javasteam/enums/EUIMode;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Z)V

    return-object v21
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->username:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->username:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->password:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->password:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->cellID:Ljava/lang/Integer;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->cellID:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->loginID:Ljava/lang/Integer;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->loginID:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->authCode:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->authCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->twoFactorCode:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->twoFactorCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->shouldRememberPassword:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->shouldRememberPassword:Z

    if-eq v1, v3, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accessToken:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accessToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return v2

    :cond_60
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountInstance:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountInstance:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_69

    return v2

    :cond_69
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountID:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountID:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_72

    return v2

    :cond_72
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->requestSteam2Ticket:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->requestSteam2Ticket:Z

    if-eq v1, v3, :cond_79

    return v2

    :cond_79
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    if-eq v1, v3, :cond_80

    return v2

    :cond_80
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientLanguage:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    return v2

    :cond_8b
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->machineName:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->machineName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    return v2

    :cond_96
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    if-eq v1, v3, :cond_9d

    return v2

    :cond_9d
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

    if-eq v1, v3, :cond_a4

    return v2

    :cond_a4
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    if-eq v1, v3, :cond_ab

    return v2

    :cond_ab
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck:Z

    iget-boolean p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck:Z

    if-eq p0, p1, :cond_b2

    return v2

    :cond_b2
    return v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public final getAccountID()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountID:J

    return-wide v0
.end method

.method public final getAccountInstance()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountInstance:J

    return-wide v0
.end method

.method public final getAuthCode()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getCellID()Ljava/lang/Integer;
    .registers 1

    .line 43
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->cellID:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getChatMode()Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;
    .registers 1

    .line 55
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    return-object p0
.end method

.method public final getClientLanguage()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getClientOSType()Lin/dragonbra/javasteam/enums/EOSType;
    .registers 1

    .line 52
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    return-object p0
.end method

.method public final getGamingDeviceType()Lin/dragonbra/javasteam/enums/EGamingDeviceType;
    .registers 1

    .line 57
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    return-object p0
.end method

.method public final getLoginID()Ljava/lang/Integer;
    .registers 1

    .line 44
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->loginID:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMachineName()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPassword()Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestSteam2Ticket()Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->requestSteam2Ticket:Z

    return p0
.end method

.method public final getShouldRememberPassword()Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->shouldRememberPassword:Z

    return p0
.end method

.method public final getTwoFactorCode()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->twoFactorCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getUiMode()Lin/dragonbra/javasteam/enums/EUIMode;
    .registers 1

    .line 56
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

    return-object p0
.end method

.method public final getUsername()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->username:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->password:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->cellID:Ljava/lang/Integer;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->loginID:Ljava/lang/Integer;

    if-nez v1, :cond_29

    move v1, v2

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->authCode:Ljava/lang/String;

    if-nez v1, :cond_36

    move v1, v2

    goto :goto_3a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->twoFactorCode:Ljava/lang/String;

    if-nez v1, :cond_43

    move v1, v2

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_47
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->shouldRememberPassword:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accessToken:Ljava/lang/String;

    if-nez v1, :cond_58

    goto :goto_5c

    :cond_58
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountInstance:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->requestSteam2Ticket:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->machineName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isSteamDeck()Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck:Z

    return p0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setAccountID(J)V
    .registers 3

    .line 50
    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountID:J

    return-void
.end method

.method public final setAccountInstance(J)V
    .registers 3

    .line 49
    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountInstance:J

    return-void
.end method

.method public final setAuthCode(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->authCode:Ljava/lang/String;

    return-void
.end method

.method public final setCellID(Ljava/lang/Integer;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->cellID:Ljava/lang/Integer;

    return-void
.end method

.method public final setChatMode(Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    return-void
.end method

.method public final setClientLanguage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setClientOSType(Lin/dragonbra/javasteam/enums/EOSType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    return-void
.end method

.method public final setGamingDeviceType(Lin/dragonbra/javasteam/enums/EGamingDeviceType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    return-void
.end method

.method public final setLoginID(Ljava/lang/Integer;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->loginID:Ljava/lang/Integer;

    return-void
.end method

.method public final setMachineName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->machineName:Ljava/lang/String;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->password:Ljava/lang/String;

    return-void
.end method

.method public final setRequestSteam2Ticket(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->requestSteam2Ticket:Z

    return-void
.end method

.method public final setShouldRememberPassword(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->shouldRememberPassword:Z

    return-void
.end method

.method public final setSteamDeck(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck:Z

    return-void
.end method

.method public final setTwoFactorCode(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->twoFactorCode:Ljava/lang/String;

    return-void
.end method

.method public final setUiMode(Lin/dragonbra/javasteam/enums/EUIMode;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 22

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->username:Ljava/lang/String;

    iget-object v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->password:Ljava/lang/String;

    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->cellID:Ljava/lang/Integer;

    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->loginID:Ljava/lang/Integer;

    iget-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->authCode:Ljava/lang/String;

    iget-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->twoFactorCode:Ljava/lang/String;

    iget-boolean v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->shouldRememberPassword:Z

    iget-object v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accessToken:Ljava/lang/String;

    iget-wide v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountInstance:J

    iget-wide v11, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->accountID:J

    iget-boolean v13, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->requestSteam2Ticket:Z

    iget-object v14, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientOSType:Lin/dragonbra/javasteam/enums/EOSType;

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->clientLanguage:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->machineName:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->chatMode:Lin/dragonbra/javasteam/steam/handlers/steamuser/ChatMode;

    move-object/from16 v18, v15

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->uiMode:Lin/dragonbra/javasteam/enums/EUIMode;

    move-object/from16 v19, v15

    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->gamingDeviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    iget-boolean v0, v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->isSteamDeck:Z

    move/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v15

    const-string v15, "LogOnDetails(username="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cellID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loginID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", twoFactorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldRememberPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accountInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", accountID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestSteam2Ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clientOSType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", machineName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gamingDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSteamDeck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
