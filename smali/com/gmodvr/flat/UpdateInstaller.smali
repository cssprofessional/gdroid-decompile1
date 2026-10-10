###### Class com.gmodvr.flat.UpdateInstaller (com.gmodvr.flat.UpdateInstaller)
.class final Lcom/gmodvr/flat/UpdateInstaller;
.super Ljava/lang/Object;
.source "UpdateInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/UpdateInstaller$NotNewer;
    }
.end annotation


# static fields
.field static final ACTION:Ljava/lang/String; = "com.gmodvr.flat.UPDATE_INSTALL_STATUS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/content/Context;Lcom/gmodvr/flat/UpdateManager;Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 107
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/UpdateInstaller;->requireIdle(Landroid/content/Context;)V

    .line 108
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/UpdateManager;)V

    invoke-static {v2, v3, v4}, Lcom/gmodvr/flat/UpdateDownload;->verify(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;Lcom/gmodvr/flat/UpdateDownload$Cancellation;)Z

    move-result v4

    if-eqz v4, :cond_148

    .line 112
    invoke-static {v0, v2, v3}, Lcom/gmodvr/flat/UpdateInstaller;->verify(Landroid/content/Context;Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v4

    if-eqz v4, :cond_140

    .line 116
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    const-wide/32 v8, 0x4000000

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_138

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v4

    .line 120
    new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 123
    iget-wide v7, v3, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    const/4 v7, 0x4

    .line 124
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 125
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    if-lt v7, v8, :cond_5f

    .line 126
    invoke-static {v5, v6}, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInstaller$SessionParams;I)V

    .line 128
    :cond_5f
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v5

    const/4 v7, 0x0

    .line 131
    :try_start_64
    invoke-virtual {v1, v5}, Lcom/gmodvr/flat/UpdateManager;->recordSession(I)Ljava/lang/String;

    move-result-object v9

    .line 132
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v14
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_12b

    .line 133
    :try_start_6c
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_11c

    .line 134
    :try_start_71
    const-string v11, "base.apk"

    iget-wide v2, v3, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_10e

    const-wide/16 v12, 0x0

    move-object v10, v14

    move-object v6, v14

    move-object v8, v15

    move-wide v14, v2

    :try_start_7b
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_a2

    const/high16 v3, 0x20000

    .line 135
    :try_start_81
    new-array v3, v3, [B

    .line 137
    :goto_83
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_99

    .line 138
    new-instance v11, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1}, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/UpdateManager;)V

    invoke-static {v11}, Lcom/gmodvr/flat/UpdateDownload;->checkCanceled(Lcom/gmodvr/flat/UpdateDownload$Cancellation;)V

    .line 139
    invoke-virtual {v2, v3, v7, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_83

    :catchall_96
    move-exception v0

    move-object v3, v0

    goto :goto_102

    .line 141
    :cond_99
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_9c
    .catchall {:try_start_81 .. :try_end_9c} :catchall_96

    if-eqz v2, :cond_a6

    .line 142
    :try_start_9e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a6

    :catchall_a2
    move-exception v0

    :goto_a3
    move-object v2, v0

    goto/16 :goto_112

    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 143
    new-instance v2, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/UpdateManager;)V

    invoke-static {v2}, Lcom/gmodvr/flat/UpdateDownload;->checkCanceled(Lcom/gmodvr/flat/UpdateDownload$Cancellation;)V

    .line 144
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/UpdateInstaller;->requireIdle(Landroid/content/Context;)V

    .line 145
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gmodvr/flat/UpdateInstallReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.gmodvr.flat.UPDATE_INSTALL_STATUS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gdroid-update://install/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 148
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    if-lt v3, v8, :cond_eb

    const/high16 v3, 0xa000000

    goto :goto_ed

    :cond_eb
    const/high16 v3, 0x8000000

    .line 149
    :goto_ed
    invoke-static {v0, v5, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_f8
    .catchall {:try_start_a6 .. :try_end_f8} :catchall_ff

    .line 152
    :try_start_f8
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_fc

    return-void

    :catchall_fc
    move-exception v0

    const/4 v6, 0x1

    goto :goto_12f

    :catchall_ff
    move-exception v0

    :goto_100
    move-object v2, v0

    goto :goto_11f

    :goto_102
    if-eqz v2, :cond_10d

    .line 133
    :try_start_104
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    goto :goto_10d

    :catchall_108
    move-exception v0

    move-object v2, v0

    :try_start_10a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10d
    :goto_10d
    throw v3
    :try_end_10e
    .catchall {:try_start_10a .. :try_end_10e} :catchall_a2

    :catchall_10e
    move-exception v0

    move-object v6, v14

    move-object v8, v15

    goto :goto_a3

    :goto_112
    :try_start_112
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_116

    goto :goto_11b

    :catchall_116
    move-exception v0

    move-object v3, v0

    :try_start_118
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11b
    throw v2
    :try_end_11c
    .catchall {:try_start_118 .. :try_end_11c} :catchall_ff

    :catchall_11c
    move-exception v0

    move-object v6, v14

    goto :goto_100

    :goto_11f
    if-eqz v6, :cond_12e

    .line 132
    :try_start_121
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_125

    goto :goto_12e

    :catchall_125
    move-exception v0

    move-object v3, v0

    :try_start_127
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_12e

    :catchall_12b
    move-exception v0

    move v6, v7

    goto :goto_12f

    :cond_12e
    :goto_12e
    throw v2
    :try_end_12f
    .catchall {:try_start_127 .. :try_end_12f} :catchall_12b

    :goto_12f
    if-nez v6, :cond_137

    .line 155
    :try_start_131
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_134
    .catch Ljava/lang/RuntimeException; {:try_start_131 .. :try_end_134} :catch_134

    .line 156
    :catch_134
    invoke-virtual/range {p1 .. p1}, Lcom/gmodvr/flat/UpdateManager;->clearSession()V

    .line 158
    :cond_137
    throw v0

    .line 117
    :cond_138
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough free storage to stage the installation."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_140
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Allow GDroid to install updates, then retry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_148
    invoke-static/range {p2 .. p2}, Lcom/gmodvr/flat/UpdateDownload;->remove(Ljava/io/File;)V

    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The saved update failed verification. Download it again."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requireIdentity(Ljava/lang/String;Ljava/lang/String;JLcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;Ljava/lang/String;JZLjava/util/Set;Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/gmodvr/flat/UpdateRelease$Candidate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    iget-object p0, p4, Lcom/gmodvr/flat/UpdateRelease$Candidate;->abi:Ljava/lang/String;

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    if-nez p9, :cond_37

    .line 88
    invoke-interface {p10}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2f

    invoke-interface {p10, p11}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    cmp-long p0, p7, p2

    if-lez p0, :cond_27

    return-void

    .line 94
    :cond_27
    new-instance p0, Lcom/gmodvr/flat/UpdateInstaller$NotNewer;

    iget-object p1, p4, Lcom/gmodvr/flat/UpdateRelease$Candidate;->tag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateInstaller$NotNewer;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_2f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The update signing certificate does not match this installation. Keep the installed app; do not uninstall it to work around this error."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_37
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This APK is not a release of your installed app variant."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requireIdle(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    sget-boolean v0, Lcom/gmodvr/flat/ImportService;->running:Z

    if-nez v0, :cond_ad

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 30
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->activationPending(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->discarding()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 33
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_22

    const/4 v1, 0x0

    goto :goto_26

    .line 35
    :cond_22
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    :goto_26
    if-eqz v1, :cond_a5

    const v2, 0x7fffffff

    .line 37
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 39
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v3, :cond_35

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const-class v3, Lcom/gmodvr/flat/UpdateDownloadService;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    goto :goto_35

    .line 41
    :cond_68
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Finish other downloads and content imports before installing an update."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_74
    :goto_74
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 45
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_74

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_91

    goto :goto_74

    .line 48
    :cond_91
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v1, ":game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto :goto_74

    .line 49
    :cond_9c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Quit the running game and finish importing content before installing an update."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a4
    return-void

    .line 36
    :cond_a5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot check whether a game is running. Reopen the launcher and retry."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_ad
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Finish or cancel game downloads and content imports before installing an update."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static signatures([Landroid/content/pm/Signature;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_1b

    .line 99
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    .line 100
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/gmodvr/flat/UpdateDownload;->digest([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    return-object v0
.end method

.method public static verify(Landroid/content/Context;Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 58
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 59
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const v3, 0x8000080

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 61
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_6f

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v3, :cond_6f

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v3, :cond_6f

    .line 63
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_29} :catch_6d

    const-string v3, ""

    if-nez v2, :cond_2f

    :goto_2d
    move-object v10, v3

    goto :goto_36

    .line 64
    :cond_2f
    :try_start_2f
    const-string v4, "com.gmodvr.UPDATE_ABI"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 65
    :goto_36
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "arm64-v8a"

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    :goto_4f
    move v13, v2

    goto :goto_53

    :cond_51
    const/4 v2, 0x0

    goto :goto_4f

    :goto_53
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 68
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    invoke-static {v1}, Lcom/gmodvr/flat/UpdateInstaller;->signatures([Landroid/content/pm/Signature;)Ljava/util/Set;

    move-result-object v14

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 69
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/UpdateInstaller;->signatures([Landroid/content/pm/Signature;)Ljava/util/Set;

    move-result-object v15

    move-object/from16 v8, p2

    .line 65
    invoke-static/range {v4 .. v15}, Lcom/gmodvr/flat/UpdateInstaller;->requireIdentity(Ljava/lang/String;Ljava/lang/String;JLcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;Ljava/lang/String;JZLjava/util/Set;Ljava/util/Set;)V

    return-void

    :catch_6d
    move-exception v0

    goto :goto_77

    .line 62
    :cond_6f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read the signed update APK."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_77} :catch_6d

    .line 71
    :goto_77
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot verify the installed app identity."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.gmodvr.flat.UpdateInstaller.NotNewer (com.gmodvr.flat.UpdateInstaller$NotNewer)
.class final Lcom/gmodvr/flat/UpdateInstaller$NotNewer;
.super Ljava/io/IOException;
.source "UpdateInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotNewer"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GDroid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on GitHub is not newer than this build. Nothing was changed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
