###### Class com.gmodvr.flat.JoinWorkshop (com.gmodvr.flat.JoinWorkshop)
.class public final Lcom/gmodvr/flat/JoinWorkshop;
.super Ljava/lang/Object;
.source "JoinWorkshop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/JoinWorkshop$Run;
    }
.end annotation


# static fields
.field static final STAGING_DIR:Ljava/lang/String; = ".steam-downloads-join"

.field private static current:Lcom/gmodvr/flat/JoinWorkshop$Run;


# direct methods
.method public static synthetic $r8$lambda$0vObUJCwbPWoDxmkWK6SaiEQbBs(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/JoinWorkshop$Run;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/JoinWorkshop;->lambda$start$0(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/JoinWorkshop$Run;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9J_GaeV1fRNoYKjReNEiHnpbMrA(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/io/File;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/JoinWorkshop;->lambda$download$1(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KtStLuti1DQuSNc1oTKAFnSr6zA(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/JoinWorkshop;->lambda$download$4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SlmxVu8z2MMoYcworbibDcxuuSs(Lcom/gmodvr/flat/JoinWorkshop$Run;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/JoinWorkshop;->lambda$download$2(Lcom/gmodvr/flat/JoinWorkshop$Run;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_24ToIuNV9KCK-qNcBTGsy0dfXw(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/JoinWorkshop;->lambda$download$3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_o2sCqK93AeeclzUCZ105_Dn84E(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/lang/String;JJ)V
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/gmodvr/flat/JoinWorkshop;->lambda$downloadConnected$5(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/JoinWorkshop;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized cancel()V
    .registers 2

    const-class v0, Lcom/gmodvr/flat/JoinWorkshop;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Lcom/gmodvr/flat/JoinWorkshop;->current:Lcom/gmodvr/flat/JoinWorkshop$Run;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/gmodvr/flat/JoinWorkshop$Run;->cancel()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception v1

    goto :goto_f

    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw v1
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 148
    const-string p0, ""

    return-object p0

    :cond_5
    const/16 v0, 0x9

    const/16 v1, 0x20

    .line 149
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_26

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_26
    return-object p0
.end method

.method private static download(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/JoinWorkshop$Run;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 73
    :try_start_4
    iget-object v2, p1, Lcom/gmodvr/flat/JoinWorkshop$Run;->worker:Ljava/lang/Thread;

    if-eqz v2, :cond_2f

    .line 74
    iget-object v2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->requirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "Finishing the previous Workshop download\u2026"

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/gmodvr/flat/JoinWorkshop$Run;->status(IILjava/lang/String;JJ)V

    .line 75
    :goto_19
    iget-object v2, p1, Lcom/gmodvr/flat/JoinWorkshop$Run;->worker:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Lcom/gmodvr/flat/JoinWorkshop$Run;->check()V

    iget-object v2, p1, Lcom/gmodvr/flat/JoinWorkshop$Run;->worker:Ljava/lang/Thread;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    goto :goto_19

    :catchall_2c
    move-exception p1

    move-object v2, v1

    goto :goto_84

    .line 77
    :cond_2f
    invoke-virtual {p0}, Lcom/gmodvr/flat/JoinWorkshop$Run;->check()V

    .line 78
    iget-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->app:Landroid/content/Context;

    sget-object v2, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p1, v2}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object p1

    .line 80
    new-instance v2, Ljava/io/File;

    const-string v3, ".steam-downloads-join"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_2c

    .line 81
    :try_start_41
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    .line 82
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 84
    iget-object v3, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->requirements:Ljava/util/List;

    invoke-static {p1, v3, p0}, Lcom/gmodvr/flat/WorkshopJoinSync;->useInstalled(Ljava/io/File;Ljava/util/List;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;)Z

    move-result v3
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_83

    if-eqz v3, :cond_57

    .line 111
    :try_start_4f
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_52

    .line 112
    :catch_52
    iput-object v1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->session:Lcom/gmodvr/flat/SteamSession;

    .line 113
    iput-boolean v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->running:Z

    return-void

    .line 85
    :cond_57
    :try_start_57
    iget-object v3, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->app:Landroid/content/Context;

    invoke-static {v3}, Lcom/gmodvr/flat/SteamRuntime;->prepare(Landroid/content/Context;)V

    .line 86
    iget-object v3, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->requirements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "Connecting to Steam\u2026"

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/gmodvr/flat/JoinWorkshop$Run;->status(IILjava/lang/String;JJ)V

    .line 87
    new-instance v3, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v2}, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/io/File;Ljava/io/File;)V

    new-instance p1, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/JoinWorkshop$Run;)V

    invoke-static {v3, p1}, Lcom/gmodvr/flat/SteamConnectionRetry;->run(Lcom/gmodvr/flat/SteamConnectionRetry$Attempt;Lcom/gmodvr/flat/SteamConnectionRetry$Reconnect;)V
    :try_end_7a
    .catchall {:try_start_57 .. :try_end_7a} :catchall_83

    .line 111
    :goto_7a
    :try_start_7a
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7d

    .line 112
    :catch_7d
    :cond_7d
    iput-object v1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->session:Lcom/gmodvr/flat/SteamSession;

    .line 113
    iput-boolean v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->running:Z

    goto/16 :goto_f9

    :catchall_83
    move-exception p1

    .line 100
    :goto_84
    :try_start_84
    iget-boolean v3, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->cancelled:Z

    if-nez v3, :cond_a3

    instance-of v3, p1, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_8d

    goto :goto_a3

    .line 101
    :cond_8d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_a5

    :catchall_9c
    move-exception p1

    goto :goto_fc

    :cond_9e
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_a5

    .line 100
    :cond_a3
    :goto_a3
    const-string v3, "cancelled"

    .line 102
    :goto_a5
    const-string v4, "GDroid"

    const-string v5, "Join Workshop content unavailable"

    invoke-static {v4, v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    monitor-enter p0
    :try_end_ad
    .catchall {:try_start_84 .. :try_end_ad} :catchall_9c

    .line 104
    :try_start_ad
    iget-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->requirements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b3
    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;

    .line 105
    iget-wide v4, v4, Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v5, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->ready:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    iget-object v5, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->failed:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4}, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_b3

    iget-object v5, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->skipped:Ljava/util/List;

    .line 107
    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4}, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-virtual {p0, v4, v3}, Lcom/gmodvr/flat/JoinWorkshop$Run;->failed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :catchall_f3
    move-exception p1

    goto :goto_fa

    .line 109
    :cond_f5
    monitor-exit p0

    if-eqz v2, :cond_7d

    goto :goto_7a

    :goto_f9
    return-void

    :goto_fa
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_ad .. :try_end_fb} :catchall_f3

    :try_start_fb
    throw p1
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_9c

    :goto_fc
    if-eqz v2, :cond_101

    .line 111
    :try_start_fe
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_101} :catch_101

    .line 112
    :catch_101
    :cond_101
    iput-object v1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->session:Lcom/gmodvr/flat/SteamSession;

    .line 113
    iput-boolean v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->running:Z

    .line 114
    throw p1
.end method

.method private static downloadConnected(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/io/File;Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    new-instance v6, Lcom/gmodvr/flat/SteamSession;

    invoke-direct {v6}, Lcom/gmodvr/flat/SteamSession;-><init>()V

    .line 119
    :try_start_5
    iput-object v6, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->session:Lcom/gmodvr/flat/SteamSession;

    .line 120
    invoke-virtual {p0}, Lcom/gmodvr/flat/JoinWorkshop$Run;->check()V

    .line 121
    invoke-virtual {v6}, Lcom/gmodvr/flat/SteamSession;->anonymous()V

    .line 122
    new-instance v3, Lcom/gmodvr/flat/SteamDownloads;

    new-instance v0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/JoinWorkshop$Run;)V

    invoke-direct {v3, v6, v0}, Lcom/gmodvr/flat/SteamDownloads;-><init>(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloads$Progress;)V

    .line 125
    iget-object v7, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->requirements:Ljava/util/List;

    new-instance v8, Lcom/gmodvr/flat/JoinWorkshop$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/JoinWorkshop$1;-><init>(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloads;Ljava/io/File;Ljava/io/File;)V

    invoke-static {p1, v7, v8, p0}, Lcom/gmodvr/flat/WorkshopJoinSync;->run(Ljava/io/File;Ljava/util/List;Lcom/gmodvr/flat/WorkshopJoinSync$Backend;Lcom/gmodvr/flat/WorkshopJoinSync$Progress;)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2a

    .line 144
    invoke-virtual {v6}, Lcom/gmodvr/flat/SteamSession;->close()V

    return-void

    :catchall_2a
    move-exception p0

    .line 118
    :try_start_2b
    invoke-virtual {v6}, Lcom/gmodvr/flat/SteamSession;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw p0
.end method

.method private static synthetic lambda$download$1(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/JoinWorkshop;->downloadConnected(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private static synthetic lambda$download$2(Lcom/gmodvr/flat/JoinWorkshop$Run;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/gmodvr/flat/JoinWorkshop$Run;->check()V

    .line 89
    monitor-enter p0

    .line 92
    :try_start_4
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->ready:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->failed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->skipped:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_4f

    .line 94
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->requirements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Steam connection lost. Reconnecting ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/gmodvr/flat/JoinWorkshop$Run;->status(IILjava/lang/String;JJ)V

    add-int/lit8 p1, p1, -0x1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 97
    invoke-virtual {p0}, Lcom/gmodvr/flat/JoinWorkshop$Run;->check()V

    return-void

    :catchall_4f
    move-exception p1

    .line 93
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method private static synthetic lambda$download$3(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$download$4(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$downloadConnected$5(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/lang/String;JJ)V
    .registers 6

    .line 123
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->text:Ljava/lang/String;

    iput-wide p2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->done:J

    iput-wide p4, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->total:J

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method private static synthetic lambda$start$0(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/JoinWorkshop$Run;)V
    .registers 2

    .line 57
    invoke-static {p0, p1}, Lcom/gmodvr/flat/JoinWorkshop;->download(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/JoinWorkshop$Run;)V

    return-void
.end method

.method public static declared-synchronized poll()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/gmodvr/flat/JoinWorkshop;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/gmodvr/flat/JoinWorkshop;->current:Lcom/gmodvr/flat/JoinWorkshop$Run;

    if-nez v1, :cond_c

    const-string v1, "finished\t0\t0\t0\t0\t\t\t"

    goto :goto_10

    :catchall_a
    move-exception v1

    goto :goto_12

    :cond_c
    invoke-virtual {v1}, Lcom/gmodvr/flat/JoinWorkshop$Run;->snapshot()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_a

    :goto_10
    monitor-exit v0

    return-object v1

    :goto_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_a

    throw v1
.end method

.method public static declared-synchronized start(Ljava/lang/String;)Z
    .registers 5

    const-class v0, Lcom/gmodvr/flat/JoinWorkshop;

    monitor-enter v0

    .line 50
    :try_start_3
    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopJoinSync;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 51
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    if-nez v1, :cond_14

    goto :goto_46

    .line 53
    :cond_14
    sget-object v2, Lcom/gmodvr/flat/JoinWorkshop;->current:Lcom/gmodvr/flat/JoinWorkshop$Run;

    if-eqz v2, :cond_22

    .line 54
    iget-boolean v3, v2, Lcom/gmodvr/flat/JoinWorkshop$Run;->running:Z

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Lcom/gmodvr/flat/JoinWorkshop$Run;->cancel()V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_49

    .line 55
    :cond_22
    :goto_22
    new-instance v3, Lcom/gmodvr/flat/JoinWorkshop$Run;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, p0}, Lcom/gmodvr/flat/JoinWorkshop$Run;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 56
    sput-object v3, Lcom/gmodvr/flat/JoinWorkshop;->current:Lcom/gmodvr/flat/JoinWorkshop$Run;

    .line 57
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda5;

    invoke-direct {v1, v3, v2}, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/JoinWorkshop$Run;)V

    const-string v2, "JoinWorkshop"

    invoke-direct {p0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p0, v3, Lcom/gmodvr/flat/JoinWorkshop$Run;->worker:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 59
    iget-object p0, v3, Lcom/gmodvr/flat/JoinWorkshop$Run;->worker:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_20

    .line 60
    monitor-exit v0

    return v1

    .line 52
    :cond_46
    :goto_46
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_20

    throw p0
.end method

###### Class com.gmodvr.flat.JoinWorkshop.AnonymousClass1 (com.gmodvr.flat.JoinWorkshop$1)
.class Lcom/gmodvr/flat/JoinWorkshop$1;
.super Ljava/lang/Object;
.source "JoinWorkshop.java"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopJoinSync$Backend;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/JoinWorkshop;->downloadConnected(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/io/File;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/io/File;

.field final synthetic val$downloads:Lcom/gmodvr/flat/SteamDownloads;

.field final synthetic val$run:Lcom/gmodvr/flat/JoinWorkshop$Run;

.field final synthetic val$stage:Ljava/io/File;

.field final synthetic val$steam:Lcom/gmodvr/flat/SteamSession;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloads;Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$run:Lcom/gmodvr/flat/JoinWorkshop$Run;

    iput-object p2, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$steam:Lcom/gmodvr/flat/SteamSession;

    iput-object p3, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$downloads:Lcom/gmodvr/flat/SteamDownloads;

    iput-object p4, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$stage:Ljava/io/File;

    iput-object p5, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$content:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$run:Lcom/gmodvr/flat/JoinWorkshop$Run;

    invoke-virtual {v0}, Lcom/gmodvr/flat/JoinWorkshop$Run;->check()V

    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {p0}, Lcom/gmodvr/flat/SteamSession;->check()V

    return-void
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/gmodvr/flat/JoinWorkshop$1;->check()V

    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$steam:Lcom/gmodvr/flat/SteamSession;

    const/16 v0, 0xfa0

    invoke-virtual {p0, v0, p1}, Lcom/gmodvr/flat/SteamSession;->workshopBatch(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public install(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;JLcom/gmodvr/flat/WorkshopIntegrity$Progress;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getPublishedfileid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v0

    .line 134
    :try_start_8
    invoke-virtual {p0}, Lcom/gmodvr/flat/JoinWorkshop$1;->check()V

    .line 135
    iget-object v1, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$downloads:Lcom/gmodvr/flat/SteamDownloads;

    sget-object v2, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v3, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$stage:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/gmodvr/flat/SteamDownloads;->item(Lcom/gmodvr/flat/GameContentProfile;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;Ljava/io/File;Lorg/json/JSONArray;)Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lcom/gmodvr/flat/JoinWorkshop$1;->check()V

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-eqz v3, :cond_47

    .line 137
    iget-object v3, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->metadata:Lorg/json/JSONObject;

    if-eqz v3, :cond_30

    const-string v4, "gma_crc"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long p2, v1, p2

    if-nez p2, :cond_30

    goto :goto_47

    :catchall_2e
    move-exception p1

    goto :goto_64

    .line 138
    :cond_30
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Downloaded addon does not match the server\'s archive; update the server\'s addon "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_47
    :goto_47
    iget-object p2, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$content:Ljava/io/File;

    invoke-static {p2, p1, p4}, Lcom/gmodvr/flat/GmodAddons;->install(Ljava/io/File;Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)V

    .line 140
    iget-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$run:Lcom/gmodvr/flat/JoinWorkshop$Run;

    monitor-enter p1
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_2e

    :try_start_4f
    iget-object p2, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$run:Lcom/gmodvr/flat/JoinWorkshop$Run;

    iget-object p2, p2, Lcom/gmodvr/flat/JoinWorkshop$Run;->changed:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_61

    .line 141
    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$stage:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    return-void

    :catchall_61
    move-exception p2

    .line 140
    :try_start_62
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw p2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_2e

    .line 141
    :goto_64
    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$1;->val$stage:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    throw p1
.end method

###### Class com.gmodvr.flat.JoinWorkshop.Run (com.gmodvr.flat.JoinWorkshop$Run)
.class final Lcom/gmodvr/flat/JoinWorkshop$Run;
.super Ljava/lang/Object;
.source "JoinWorkshop.java"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopJoinSync$Progress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/JoinWorkshop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Run"
.end annotation


# instance fields
.field final app:Landroid/content/Context;

.field volatile cancelled:Z

.field final changed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field count:I

.field done:J

.field final failed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field index:I

.field final ready:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;",
            ">;"
        }
    .end annotation
.end field

.field volatile running:Z

.field volatile session:Lcom/gmodvr/flat/SteamSession;

.field final skipped:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;

.field total:J

.field worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopJoinSync$Requirement;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->ready:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->failed:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->changed:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->skipped:Ljava/util/List;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->running:Z

    .line 23
    const-string v0, "Connecting to Steam\u2026"

    iput-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->text:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->app:Landroid/content/Context;

    iput-object p2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->requirements:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->count:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->cancelled:Z

    .line 32
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 33
    :cond_a
    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->session:Lcom/gmodvr/flat/SteamSession;

    if-eqz p0, :cond_11

    .line 34
    :try_start_e
    invoke-virtual {p0}, Lcom/gmodvr/flat/SteamSession;->close()V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public check()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    iget-boolean p0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->cancelled:Z

    if-nez p0, :cond_f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_f

    return-void

    :cond_f
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public declared-synchronized failed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->failed:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/gmodvr/flat/JoinWorkshop;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3b

    const/16 v2, 0x2c

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public declared-synchronized ready(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->ready:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->ready:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw p1
.end method

.method public declared-synchronized skipped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->skipped:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/gmodvr/flat/JoinWorkshop;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3b

    const/16 v2, 0x2c

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public declared-synchronized snapshot()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 43
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->running:Z

    if-eqz v1, :cond_f

    const-string v1, "running"

    goto :goto_11

    :catchall_d
    move-exception v0

    goto :goto_80

    :cond_f
    const-string v1, "finished"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->done:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->total:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->text:Ljava/lang/String;

    .line 44
    invoke-static {v2}, Lcom/gmodvr/flat/JoinWorkshop;->-$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ","

    iget-object v3, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->ready:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ";"

    iget-object v3, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->failed:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ","

    iget-object v3, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->changed:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ";"

    iget-object v2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->skipped:Ljava/util/List;

    .line 45
    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_d

    .line 43
    monitor-exit p0

    return-object v0

    :goto_80
    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_d

    throw v0
.end method

.method public declared-synchronized status(IILjava/lang/String;JJ)V
    .registers 8

    monitor-enter p0

    .line 37
    :try_start_1
    iput p1, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->index:I

    iput p2, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->count:I

    iput-object p3, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->text:Ljava/lang/String;

    iput-wide p4, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->done:J

    iput-wide p6, p0, Lcom/gmodvr/flat/JoinWorkshop$Run;->total:J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 38
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

###### Class com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda0 (com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamConnectionRetry$Attempt;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/io/File;Ljava/io/File;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

    iput-object p2, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

    iget-object v1, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/JoinWorkshop;->$r8$lambda$9J_GaeV1fRNoYKjReNEiHnpbMrA(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

###### Class com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda1 (com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamConnectionRetry$Reconnect;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/JoinWorkshop$Run;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

    return-void
.end method


# virtual methods
.method public final run(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/JoinWorkshop;->$r8$lambda$SlmxVu8z2MMoYcworbibDcxuuSs(Lcom/gmodvr/flat/JoinWorkshop$Run;I)V

    return-void
.end method

###### Class com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda2 (com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/JoinWorkshop;->$r8$lambda$_24ToIuNV9KCK-qNcBTGsy0dfXw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda3 (com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/JoinWorkshop;->$r8$lambda$KtStLuti1DQuSNc1oTKAFnSr6zA(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda4 (com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamDownloads$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/JoinWorkshop$Run;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/String;JJ)V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/gmodvr/flat/JoinWorkshop;->$r8$lambda$_o2sCqK93AeeclzUCZ105_Dn84E(Lcom/gmodvr/flat/JoinWorkshop$Run;Ljava/lang/String;JJ)V

    return-void
.end method

###### Class com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda5 (com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

.field public final synthetic f$1:Lcom/gmodvr/flat/JoinWorkshop$Run;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/JoinWorkshop$Run;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

    iput-object p2, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda5;->f$1:Lcom/gmodvr/flat/JoinWorkshop$Run;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/JoinWorkshop$Run;

    iget-object p0, p0, Lcom/gmodvr/flat/JoinWorkshop$$ExternalSyntheticLambda5;->f$1:Lcom/gmodvr/flat/JoinWorkshop$Run;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/JoinWorkshop;->$r8$lambda$0vObUJCwbPWoDxmkWK6SaiEQbBs(Lcom/gmodvr/flat/JoinWorkshop$Run;Lcom/gmodvr/flat/JoinWorkshop$Run;)V

    return-void
.end method
