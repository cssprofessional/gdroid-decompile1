###### Class com.gmodvr.flat.UpdateDownloadService (com.gmodvr.flat.UpdateDownloadService)
.class public final Lcom/gmodvr/flat/UpdateDownloadService;
.super Landroid/app/Service;
.source "UpdateDownloadService.java"

# interfaces
.implements Lcom/gmodvr/flat/UpdateManager$Listener;


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "gdroid_updates"

.field static final DOWNLOAD:Ljava/lang/String; = "com.gmodvr.flat.UPDATE_DOWNLOAD"

.field static final INSTALL:Ljava/lang/String; = "com.gmodvr.flat.UPDATE_INSTALL"

.field private static final NOTIFICATION:I = 0x1069

.field static final PAUSE:Ljava/lang/String; = "com.gmodvr.flat.UPDATE_PAUSE"


# instance fields
.field private transferring:Z

.field private updates:Lcom/gmodvr/flat/UpdateManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$p6ODqogKuVK5rU3iguBiPGEgMbA(Lcom/gmodvr/flat/UpdateDownloadService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateDownloadService;->lambda$onStartCommand$0()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartCommand$0()V
    .registers 2

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/gmodvr/flat/UpdateDownloadService;->transferring:Z

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private notification()Landroid/app/Notification;
    .registers 11

    .line 58
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateDownloadService;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->snapshot()Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gmodvr/flat/UpdateSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 61
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "gdroid_updates"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080081

    .line 62
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    sget v5, Lcom/gmodvr/flat/R$string;->updates_title:I

    .line 63
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 64
    invoke-static {p0, v0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->status(Landroid/content/Context;Lcom/gmodvr/flat/UpdateManager$Snapshot;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 66
    iget-object v5, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    if-eqz v5, :cond_7e

    iget-object v6, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v7, Lcom/gmodvr/flat/UpdateManager$Phase;->DOWNLOADING:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-ne v6, v7, :cond_7e

    const-wide/16 v6, 0x64

    .line 67
    iget-wide v8, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->downloaded:J

    mul-long/2addr v8, v6

    iget-wide v5, v5, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    div-long/2addr v8, v5

    long-to-int v0, v8

    const/16 v5, 0x64

    invoke-virtual {v1, v5, v0, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/gmodvr/flat/UpdateDownloadService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.gmodvr.flat.UPDATE_PAUSE"

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    invoke-static {p0, v4, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 71
    new-instance v2, Landroid/app/Notification$Action$Builder;

    sget v3, Lcom/gmodvr/flat/R$string;->updates_pause:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_81

    .line 72
    :cond_7e
    invoke-virtual {v1, v2, v2, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 73
    :goto_81
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public changed()V
    .registers 3

    .line 77
    iget-boolean v0, p0, Lcom/gmodvr/flat/UpdateDownloadService;->transferring:Z

    if-eqz v0, :cond_15

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x1069

    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateDownloadService;->notification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_15
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 6

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/UpdateDownloadService;->updates:Lcom/gmodvr/flat/UpdateManager;

    .line 27
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 28
    new-instance v1, Landroid/app/NotificationChannel;

    sget v2, Lcom/gmodvr/flat/R$string;->updates_title:I

    .line 29
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "gdroid_updates"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 30
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateDownloadService;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0, p0}, Lcom/gmodvr/flat/UpdateManager;->listen(Lcom/gmodvr/flat/UpdateManager$Listener;)V

    .line 31
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GDroid:UpdateDownload"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/UpdateDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateDownloadService;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0, p0}, Lcom/gmodvr/flat/UpdateManager;->unlisten(Lcom/gmodvr/flat/UpdateManager$Listener;)V

    .line 81
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/gmodvr/flat/UpdateDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 82
    :cond_14
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .line 36
    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateDownloadService;->notification()Landroid/app/Notification;

    move-result-object p2

    const/16 p3, 0x1069

    const/4 v0, 0x1

    invoke-virtual {p0, p3, p2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    const/4 p2, 0x2

    if-eqz p1, :cond_26

    .line 37
    const-string p3, "com.gmodvr.flat.UPDATE_PAUSE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_26

    .line 38
    iget-object p1, p0, Lcom/gmodvr/flat/UpdateDownloadService;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p1}, Lcom/gmodvr/flat/UpdateManager;->pause()V

    .line 39
    iget-boolean p1, p0, Lcom/gmodvr/flat/UpdateDownloadService;->transferring:Z

    if-nez p1, :cond_25

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_25
    return p2

    .line 42
    :cond_26
    iget-boolean p3, p0, Lcom/gmodvr/flat/UpdateDownloadService;->transferring:Z

    if-nez p3, :cond_61

    if-eqz p1, :cond_61

    const-string p3, "com.gmodvr.flat.UPDATE_DOWNLOAD"

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "com.gmodvr.flat.UPDATE_INSTALL"

    if-nez p3, :cond_44

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_61

    .line 46
    :cond_44
    iget-object p3, p0, Lcom/gmodvr/flat/UpdateDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xdbba00

    invoke-virtual {p3, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 47
    iget-object p3, p0, Lcom/gmodvr/flat/UpdateDownloadService;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance v1, Lcom/gmodvr/flat/UpdateDownloadService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/UpdateDownloadService$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/UpdateDownloadService;)V

    invoke-virtual {p3, p1, v1}, Lcom/gmodvr/flat/UpdateManager;->transfer(ZLjava/lang/Runnable;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/gmodvr/flat/UpdateDownloadService;->transferring:Z

    .line 53
    :cond_61
    iget-boolean p1, p0, Lcom/gmodvr/flat/UpdateDownloadService;->transferring:Z

    if-nez p1, :cond_6b

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_6b
    return p2
.end method

###### Class com.gmodvr.flat.UpdateDownloadService$$ExternalSyntheticLambda0 (com.gmodvr.flat.UpdateDownloadService$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/UpdateDownloadService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateDownloadService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateDownloadService$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/UpdateDownloadService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateDownloadService$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/UpdateDownloadService;

    invoke-static {p0}, Lcom/gmodvr/flat/UpdateDownloadService;->$r8$lambda$p6ODqogKuVK5rU3iguBiPGEgMbA(Lcom/gmodvr/flat/UpdateDownloadService;)V

    return-void
.end method
