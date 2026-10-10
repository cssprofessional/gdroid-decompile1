###### Class com.gmodvr.flat.ImportService (com.gmodvr.flat.ImportService)
.class public final Lcom/gmodvr/flat/ImportService;
.super Landroid/app/Service;
.source "ImportService.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "content_import"

.field private static final NOTICE:I = 0x26c

.field static volatile running:Z


# instance fields
.field private volatile cancelled:Z

.field private percent:I

.field private wake:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$KkF4aQ28fzkJuEEijVcX00TbEkE(Lcom/gmodvr/flat/ImportService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ImportService;->lambda$importContent$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nw8N0AHsmjgiOMeCAoOpi0Hj2Dg(Lcom/gmodvr/flat/ImportService;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/ImportService;->lambda$onStartCommand$0(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rYDloRYq_VBASE4dDj4xPWcexPI(Lcom/gmodvr/flat/ImportService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ImportService;->lambda$importContent$2(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private checkCancel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-boolean p0, p0, Lcom/gmodvr/flat/ImportService;->cancelled:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Import paused. Select the same parent folder to resume."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private importContent(Landroid/net/Uri;ZLcom/gmodvr/flat/GameContentProfile;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 86
    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->destination(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 87
    invoke-static {p3}, Lcom/gmodvr/flat/GameFolder;->installFolder(Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 89
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-static {v2}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    move-object v0, v2

    :cond_19
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_23

    .line 94
    :try_start_1d
    invoke-static {p0, p1}, Lcom/gmodvr/flat/LocalFolder;->resolve(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move p2, v1

    .line 97
    :cond_23
    :goto_23
    invoke-static {v0}, Lcom/gmodvr/flat/CopyImporter;->staging(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2e

    move p2, v1

    :cond_2e
    if-nez p2, :cond_3a

    .line 101
    :try_start_30
    new-instance v3, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/ImportService;)V

    invoke-static {v2, v0, p3, v3}, Lcom/gmodvr/flat/MoveImporter;->move(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/MoveImporter$Progress;)V
    :try_end_38
    .catch Lcom/gmodvr/flat/MoveImporter$MoveUnavailable; {:try_start_30 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move p2, v1

    :cond_3a
    :goto_3a
    if-eqz p2, :cond_52

    .line 110
    new-instance p2, Lcom/gmodvr/flat/CopyImporter;

    new-instance p3, Lcom/gmodvr/flat/DocumentSource;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p3, v2, p1}, Lcom/gmodvr/flat/DocumentSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    new-instance p1, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/ImportService;)V

    invoke-direct {p2, p3, p1}, Lcom/gmodvr/flat/CopyImporter;-><init>(Lcom/gmodvr/flat/CopyImporter$Source;Lcom/gmodvr/flat/MoveImporter$Progress;)V

    .line 113
    invoke-virtual {p2, v0}, Lcom/gmodvr/flat/CopyImporter;->copy(Ljava/io/File;)V

    .line 115
    :cond_52
    const-string p1, "storage"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "shared_content"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "custom_content"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 118
    const-string p1, "Finishing \u00b7 removing the previous app copy\u2026"

    const/16 p2, 0x5f

    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ImportService;->progress(Ljava/lang/String;I)V

    .line 119
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    const-string p3, "content"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    new-instance p2, Ljava/io/File;

    const-string p3, ".complete"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_91

    invoke-static {p1}, Lcom/gmodvr/flat/Storage;->delete(Ljava/io/File;)V

    .line 121
    :cond_91
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    const-string p3, "import.pending"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    new-instance p2, Ljava/io/File;

    const-string p3, ".origin"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_ac

    invoke-static {p1}, Lcom/gmodvr/flat/Storage;->delete(Ljava/io/File;)V

    .line 123
    :cond_ac
    const-string p1, "Import complete. Game files are ready."

    const/16 p2, 0x64

    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ImportService;->progress(Ljava/lang/String;I)V

    return-void

    .line 116
    :cond_b4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Files imported, but Android could not save the new location. Select the same source folder to finish."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_bc
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Allow file access, then select the game folder again."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$importContent$1(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x64

    if-ge p2, v0, :cond_7

    .line 102
    invoke-direct {p0}, Lcom/gmodvr/flat/ImportService;->checkCancel()V

    :cond_7
    mul-int/lit8 p2, p2, 0x5a

    .line 103
    div-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ImportService;->progress(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$importContent$2(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x64

    if-ge p2, v0, :cond_7

    .line 111
    invoke-direct {p0}, Lcom/gmodvr/flat/ImportService;->checkCancel()V

    :cond_7
    if-gez p2, :cond_b

    const/4 p2, -0x1

    goto :goto_e

    :cond_b
    mul-int/lit8 p2, p2, 0x5a

    .line 112
    div-int/2addr p2, v0

    :goto_e
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ImportService;->progress(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onStartCommand$0(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    :try_start_2
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->lock(Landroid/content/Context;)Lcom/gmodvr/flat/Storage$Lease;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_29
    .catchall {:try_start_2 .. :try_end_6} :catchall_27

    if-eqz p1, :cond_43

    if-eqz p2, :cond_11

    .line 39
    :try_start_a
    invoke-static {p2}, Lcom/gmodvr/flat/GameContentProfile;->forId(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;

    move-result-object p2

    goto :goto_13

    :catchall_f
    move-exception p1

    goto :goto_4b

    :cond_11
    sget-object p2, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    .line 40
    :goto_13
    const-string v3, "copy"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    invoke-direct {p0, p1, p3, p2}, Lcom/gmodvr/flat/ImportService;->importContent(Landroid/net/Uri;ZLcom/gmodvr/flat/GameContentProfile;)V

    .line 41
    const-string p1, "Import complete. Game is ready."

    invoke-direct {p0, p1, v1}, Lcom/gmodvr/flat/ImportService;->status(Ljava/lang/String;Z)V
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_f

    if-eqz v2, :cond_2b

    .line 42
    :try_start_23
    invoke-virtual {v2}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_29
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p1

    goto :goto_76

    :catch_29
    move-exception p1

    goto :goto_56

    .line 45
    :cond_2b
    :goto_2b
    sput-boolean v1, Lcom/gmodvr/flat/ImportService;->running:Z

    .line 46
    iget-object p1, p0, Lcom/gmodvr/flat/ImportService;->wake:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3c

    :goto_37
    iget-object p1, p0, Lcom/gmodvr/flat/ImportService;->wake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 47
    :cond_3c
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_75

    .line 38
    :cond_43
    :try_start_43
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No content folder was selected"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_f

    :goto_4b
    if-eqz v2, :cond_55

    .line 37
    :try_start_4d
    invoke-virtual {v2}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p2

    :try_start_52
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    throw p1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_29
    .catchall {:try_start_52 .. :try_end_56} :catchall_27

    .line 43
    :goto_56
    :try_start_56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_61

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    :cond_61
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_65
    invoke-direct {p0, p1, v0}, Lcom/gmodvr/flat/ImportService;->status(Ljava/lang/String;Z)V
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_27

    .line 45
    sput-boolean v1, Lcom/gmodvr/flat/ImportService;->running:Z

    .line 46
    iget-object p1, p0, Lcom/gmodvr/flat/ImportService;->wake:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_37

    :goto_75
    return-void

    .line 45
    :goto_76
    sput-boolean v1, Lcom/gmodvr/flat/ImportService;->running:Z

    .line 46
    iget-object p2, p0, Lcom/gmodvr/flat/ImportService;->wake:Landroid/os/PowerManager$WakeLock;

    if-eqz p2, :cond_87

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_87

    iget-object p2, p0, Lcom/gmodvr/flat/ImportService;->wake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 47
    :cond_87
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 49
    throw p1
.end method

.method private notification(Ljava/lang/String;I)Landroid/app/Notification;
    .registers 9

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/LauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 63
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gmodvr/flat/ImportService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "cancel"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v4, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 64
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v5, "content_import"

    invoke-direct {v3, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080081

    invoke-virtual {v3, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v3, "Importing Source Game"

    .line 65
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 66
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gez p2, :cond_4b

    move v1, v4

    :cond_4b
    const/16 p2, 0x64

    invoke-virtual {p0, p2, p1, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p1, Landroid/app/Notification$Action$Builder;

    const/4 p2, 0x0

    const-string v0, "Pause"

    invoke-direct {p1, p2, v0, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 67
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private progress(Ljava/lang/String;I)V
    .registers 4

    .line 75
    iput p2, p0, Lcom/gmodvr/flat/ImportService;->percent:I

    const/4 p2, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ImportService;->status(Ljava/lang/String;Z)V

    .line 77
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p2, v0, :cond_14

    const-string p2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_27

    .line 78
    :cond_14
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iget v0, p0, Lcom/gmodvr/flat/ImportService;->percent:I

    invoke-direct {p0, p1, v0}, Lcom/gmodvr/flat/ImportService;->notification(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p0

    const/16 p1, 0x26c

    invoke-virtual {p2, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_27
    return-void
.end method

.method private status(Ljava/lang/String;Z)V
    .registers 5

    .line 71
    const-string v0, "import"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "error"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "progress"

    iget p0, p0, Lcom/gmodvr/flat/ImportService;->percent:I

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 5

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Game import"

    const/4 v2, 0x2

    const-string v3, "content_import"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/gmodvr/flat/ImportService;->cancelled:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    const/4 p2, 0x2

    if-nez p1, :cond_7

    .line 26
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p2

    .line 27
    :cond_7
    const-string p3, "cancel"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_17

    iput-boolean v0, p0, Lcom/gmodvr/flat/ImportService;->cancelled:Z

    return p2

    .line 28
    :cond_17
    sget-boolean p3, Lcom/gmodvr/flat/ImportService;->running:Z

    if-eqz p3, :cond_1c

    return p2

    .line 29
    :cond_1c
    sput-boolean v0, Lcom/gmodvr/flat/ImportService;->running:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/gmodvr/flat/ImportService;->cancelled:Z

    iput p3, p0, Lcom/gmodvr/flat/ImportService;->percent:I

    .line 30
    const-string v1, "Checking core game files\u2026"

    invoke-direct {p0, v1, p3}, Lcom/gmodvr/flat/ImportService;->status(Ljava/lang/String;Z)V

    .line 31
    const-string v1, "Preparing game import\u2026"

    invoke-direct {p0, v1, p3}, Lcom/gmodvr/flat/ImportService;->notification(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p3

    const/16 v1, 0x26c

    invoke-virtual {p0, v1, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 32
    const-class p3, Landroid/os/PowerManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    const-string v1, "GDroid:Import"

    invoke-virtual {p3, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    iput-object p3, p0, Lcom/gmodvr/flat/ImportService;->wake:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0x1499700

    .line 33
    invoke-virtual {p3, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    .line 35
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p3, v0, p1}, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/ImportService;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V

    const-string p0, "GDroid-content-import"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return p2
.end method

.method public onTimeout(II)V
    .registers 3

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/gmodvr/flat/ImportService;->cancelled:Z

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

###### Class com.gmodvr.flat.ImportService$$ExternalSyntheticLambda0 (com.gmodvr.flat.ImportService$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/MoveImporter$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ImportService;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ImportService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/ImportService;

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/String;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/ImportService;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/ImportService;->$r8$lambda$KkF4aQ28fzkJuEEijVcX00TbEkE(Lcom/gmodvr/flat/ImportService;Ljava/lang/String;I)V

    return-void
.end method

###### Class com.gmodvr.flat.ImportService$$ExternalSyntheticLambda1 (com.gmodvr.flat.ImportService$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/MoveImporter$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ImportService;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ImportService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/ImportService;

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/String;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/ImportService;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/ImportService;->$r8$lambda$rYDloRYq_VBASE4dDj4xPWcexPI(Lcom/gmodvr/flat/ImportService;Ljava/lang/String;I)V

    return-void
.end method

###### Class com.gmodvr.flat.ImportService$$ExternalSyntheticLambda2 (com.gmodvr.flat.ImportService$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ImportService;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ImportService;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/ImportService;

    iput-object p2, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;->f$3:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/ImportService;

    iget-object v1, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/ImportService$$ExternalSyntheticLambda2;->f$3:Landroid/content/Intent;

    invoke-static {v0, v1, v2, p0}, Lcom/gmodvr/flat/ImportService;->$r8$lambda$Nw8N0AHsmjgiOMeCAoOpi0Hj2Dg(Lcom/gmodvr/flat/ImportService;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
