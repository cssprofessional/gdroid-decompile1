###### Class com.gmodvr.flat.GameActivity (com.gmodvr.flat.GameActivity)
.class public final Lcom/gmodvr/flat/GameActivity;
.super Lorg/libsdl/app/SDLActivity;
.source "GameActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GDroid"


# instance fields
.field private arguments:[Ljava/lang/String;

.field private lease:Lcom/gmodvr/flat/Storage$Lease;


# direct methods
.method public static synthetic $r8$lambda$-RkwkbMI7OwW4o6YAtcQAQjXb1k(Landroid/content/Context;)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/GameActivity;->lambda$onCreate$0(Landroid/content/Context;)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2rnuNrb_d6dAN0Bjnw03t9jzWws(Lcom/gmodvr/flat/GameActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/GameActivity;->lambda$openGModAddons$1()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lorg/libsdl/app/SDLActivity;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onCreate$0(Landroid/content/Context;)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/gmodvr/flat/SteamRuntime;->prepare(Landroid/content/Context;)V

    .line 109
    invoke-static {p0}, Lcom/gmodvr/flat/SteamIdentityProvider;->savedIdentity(Landroid/content/Context;)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$openGModAddons$1()V
    .registers 3

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/ModManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static native nativeSetForeground(Z)V
.end method

.method private static native nativeTrimMemory(I)V
.end method

.method private sendEscape(Z)V
    .registers 3

    .line 117
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_16

    :cond_b
    const/16 p0, 0x6f

    if-eqz p1, :cond_13

    .line 118
    invoke-static {p0}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    goto :goto_16

    .line 119
    :cond_13
    invoke-static {p0}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method private setDiagnosticForeground(Z)V
    .registers 2

    .line 149
    sget-boolean p0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz p0, :cond_5

    return-void

    .line 150
    :cond_5
    :try_start_5
    invoke-static {p1}, Lcom/gmodvr/flat/GameActivity;->nativeSetForeground(Z)V
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_10

    .line 151
    :catch_9
    const-string p0, "GDroid"

    const-string p1, "Frame watchdog library not loaded"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 123
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2c

    .line 125
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0, v1}, Lcom/gmodvr/flat/GameActivity;->sendEscape(Z)V

    goto :goto_2b

    .line 126
    :cond_21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2b

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/GameActivity;->sendEscape(Z)V

    :cond_2b
    :goto_2b
    return v1

    .line 129
    :cond_2c
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getArguments()[Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/gmodvr/flat/GameActivity;->arguments:[Ljava/lang/String;

    return-object p0
.end method

.method public getLibraries()[Ljava/lang/String;
    .registers 2

    .line 22
    const-string p0, "SDL2"

    const-string v0, "launcher"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainFunction()Ljava/lang/String;
    .registers 1

    .line 23
    const-string p0, "LauncherMainAndroid"

    return-object p0
.end method

.method public onBackPressed()V
    .registers 2

    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/GameActivity;->sendEscape(Z)V

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/GameActivity;->sendEscape(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16

    .line 27
    const-string v0, "garrysmod"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 28
    invoke-static {v1}, Lcom/gmodvr/flat/GameContentProfile;->forId(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;

    move-result-object v1

    goto :goto_15

    :cond_13
    sget-object v1, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    :goto_15
    if-nez v1, :cond_19

    .line 29
    sget-object v1, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    .line 32
    :cond_19
    :try_start_19
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->lock(Landroid/content/Context;)Lcom/gmodvr/flat/Storage$Lease;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/GameActivity;->lease:Lcom/gmodvr/flat/Storage$Lease;

    .line 33
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->recoverContent(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mod_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    if-nez v2, :cond_31

    move-object v2, v10

    goto :goto_3a

    .line 35
    :cond_31
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gmodvr/flat/GameMod;->read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;

    move-result-object v2

    .line 36
    :goto_3a
    invoke-static {p0, v1, v2}, Lcom/gmodvr/flat/RuntimeAssets;->prepare(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V

    if-nez v2, :cond_47

    .line 37
    invoke-static {p0, v1}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v3

    goto :goto_4f

    :catch_44
    move-exception p1

    goto/16 :goto_1fd

    :cond_47
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/gmodvr/flat/GameMod;->userDirectory(Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v3

    .line 38
    :goto_4f
    invoke-static {v3}, Lcom/gmodvr/flat/Storage;->recoverUser(Ljava/io/File;)V

    .line 40
    iget-object v4, v1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/gmodvr/flat/Storage;->customContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 41
    invoke-static {p0, v1}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gmodvr/flat/GameFolder;->check(Lcom/gmodvr/flat/GameContentProfile;Ljava/io/File;)V

    .line 43
    :cond_61
    invoke-static {p0, v1}, Lcom/gmodvr/flat/Storage;->ready(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Z

    move-result v4

    if-eqz v4, :cond_1df

    .line 47
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 49
    invoke-static {p0, v1}, Lcom/gmodvr/flat/Storage;->engineContent(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v6

    .line 50
    invoke-static {p0}, Lcom/gmodvr/flat/RuntimeAssets;->runtime(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 52
    const-string v8, "APP_DATA_PATH"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v8, v9, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    const-string v8, "VALVE_GAME_PATH"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    const-string v4, "APP_LIB_PATH"

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    const-string v4, "APP_MOD_LIB"

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    const-string v4, "SOURCEVR_GAME"

    iget-object v5, v1, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    const-string v4, "SOURCE_GAME"

    iget-object v5, v1, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    const-string v4, "SOURCEVR_SHARED_CONTENT_PATH"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    const-string v4, "SOURCEVR_WRITE_GAME_PATH"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    const-string v4, "EXTRAS_VPK_PATH"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    const-string v4, "LANG"

    const-string v5, "en_US.UTF-8"

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    const-string v4, "SDL_ANDROID_TRAP_BACK_BUTTON"

    const-string v5, "1"

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    const-string v4, "TMPDIR"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    const-string v4, "SQLITE_TMPDIR"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->exportEnvironment(Landroid/content/Context;)V

    .line 69
    const-string v4, "settings"

    const/4 v12, 0x0

    invoke-virtual {p0, v4, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 70
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 72
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 73
    const-string v6, "height"

    const/16 v7, 0x2d0

    invoke-interface {v13, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/2addr v5, v6

    .line 74
    div-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    const/16 v4, 0x280

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "action"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "target"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    new-instance v8, Ljava/io/File;

    const-string v9, "videoconfig_android.cfg"

    invoke-direct {v8, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v2, :cond_151

    .line 79
    const-string v2, "launch_args"

    goto :goto_16e

    :cond_151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mod_launch_args_"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    :goto_16e
    const-string v3, ""

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-static {p0}, Lcom/gmodvr/flat/LaunchArguments;->heapSizeMB(Landroid/content/Context;)I

    move-result v11

    move-object v2, v1

    move v3, v4

    move v4, v6

    move-object v6, v7

    move-object v7, v9

    move v9, v11

    .line 80
    invoke-static/range {v2 .. v9}, Lcom/gmodvr/flat/LaunchArguments;->build(Lcom/gmodvr/flat/GameContentProfile;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/GameActivity;->arguments:[Ljava/lang/String;

    .line 82
    iget-object v2, v1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1aa

    .line 83
    iget-object v2, p0, Lcom/gmodvr/flat/GameActivity;->arguments:[Ljava/lang/String;

    const-string v3, "gmod_npc_walkthrough"

    .line 84
    invoke-interface {v13, v3, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "gmod_walk_anim"

    .line 85
    invoke-interface {v13, v4, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "gmod_mute_failed_grab"

    .line 86
    invoke-interface {v13, v5, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 83
    invoke-static {v3, v4, v5}, Lcom/gmodvr/flat/LaunchArguments;->gameToggleArgs(ZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gmodvr/flat/LaunchArguments;->withExtra([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/GameActivity;->arguments:[Ljava/lang/String;

    .line 89
    :cond_1aa
    iget-object v1, v1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 90
    iget-object v0, p0, Lcom/gmodvr/flat/GameActivity;->arguments:[Ljava/lang/String;

    const-string v1, "gmod_player_name"

    invoke-interface {v13, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gmodvr/flat/LaunchArguments;->withPlayerName([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/GameActivity;->arguments:[Ljava/lang/String;

    .line 92
    :cond_1c0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c9} :catch_44

    .line 105
    invoke-static {p0}, Lcom/sourcevrport/platform/GModWebView;->initialize(Landroid/app/Activity;)V

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-static {v1}, Lcom/sourcevrport/platform/GModServerDirectory;->initialize(Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;)V

    .line 112
    invoke-static {v1}, Lcom/sourcevrport/platform/GModSteamAuth;->initialize(Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;)V

    .line 113
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 44
    :cond_1df
    :try_start_1df
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install or import "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from the launcher first."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1fd} :catch_44

    .line 94
    :goto_1fd
    const-string v0, "GDroid"

    const-string v1, "Startup failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/LauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v1, "error"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 97
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    iget-object p1, p0, Lcom/gmodvr/flat/GameActivity;->lease:Lcom/gmodvr/flat/Storage$Lease;

    if-eqz p1, :cond_223

    :try_start_220
    invoke-virtual {p1}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_223} :catch_223

    .line 100
    :catch_223
    :cond_223
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 101
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->markCleanExit(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 175
    invoke-static {p0}, Lcom/sourcevrport/platform/GModWebView;->shutdown(Landroid/app/Activity;)V

    .line 176
    invoke-static {}, Lcom/sourcevrport/platform/GModServerDirectory;->shutdown()V

    .line 177
    invoke-static {}, Lcom/sourcevrport/platform/GModSteamAuth;->shutdown()V

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/GameActivity;->setDiagnosticForeground(Z)V

    .line 179
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/gmodvr/flat/GameActivity;->lease:Lcom/gmodvr/flat/Storage$Lease;

    if-eqz v0, :cond_17

    :try_start_14
    invoke-virtual {v0}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17

    .line 182
    :catch_17
    :cond_17
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->markCleanExit(Landroid/content/Context;)V

    .line 183
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/GameActivity;->setDiagnosticForeground(Z)V

    .line 161
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 155
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onResume()V

    const/4 v0, 0x1

    .line 156
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/GameActivity;->setDiagnosticForeground(Z)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 166
    sget-boolean p0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz p0, :cond_8

    return-void

    .line 168
    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/gmodvr/flat/GameActivity;->nativeTrimMemory(I)V
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_27

    .line 170
    :catch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrimMemory("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): native library not loaded"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GDroid"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public openGModAddons()V
    .registers 2

    .line 139
    new-instance v0, Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/GameActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gmodvr.flat.GameActivity$$ExternalSyntheticLambda0 (com.gmodvr.flat.GameActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/GameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/GameActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/GameActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/GameActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/GameActivity;->$r8$lambda$2rnuNrb_d6dAN0Bjnw03t9jzWws(Lcom/gmodvr/flat/GameActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.GameActivity$$ExternalSyntheticLambda1 (com.gmodvr.flat.GameActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final savedIdentity()Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/GameActivity$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/gmodvr/flat/GameActivity;->$r8$lambda$-RkwkbMI7OwW4o6YAtcQAQjXb1k(Landroid/content/Context;)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    move-result-object p0

    return-object p0
.end method
