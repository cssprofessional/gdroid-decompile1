###### Class com.gmodvr.flat.UpdateManager (com.gmodvr.flat.UpdateManager)
.class final Lcom/gmodvr/flat/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/UpdateManager$Snapshot;,
        Lcom/gmodvr/flat/UpdateManager$Phase;,
        Lcom/gmodvr/flat/UpdateManager$Listener;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL_MS:J = 0x5265c00L

.field private static instance:Lcom/gmodvr/flat/UpdateManager;


# instance fields
.field private busy:Z

.field private volatile canceled:Z

.field private final context:Landroid/content/Context;

.field private final directory:Ljava/io/File;

.field private lastProgress:J

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gmodvr/flat/UpdateManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final main:Landroid/os/Handler;

.field private final preferences:Landroid/content/SharedPreferences;

.field private volatile state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$Lt5wodJF2VBzRE6GUIMeEaTVdb8(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->lambda$check$1(Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nmd_wPgTF1AGng18dyxcH5TmjQM(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->lambda$new$0(Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rbq-Uwz1eSIyMytX15kiF8XZPPQ(Lcom/gmodvr/flat/UpdateManager;ZLcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/UpdateManager;->lambda$transfer$3(ZLcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RupmVmHtL6Z4oxyW7k-YzgVrH-U(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->lambda$discard$4(Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fV747-mSdOXPfzdo9D-QPMoTPgo(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;JZ)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/UpdateManager;->lambda$transfer$2(Lcom/gmodvr/flat/UpdateRelease$Candidate;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lV0kgJQL3pSZcLkBOyQ54nvz5oc(Lcom/gmodvr/flat/UpdateManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateManager;->lambda$notifyListeners$5()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 14

    .line 57
    const-string v0, "session"

    const-string v1, "candidate"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/UpdateManager;->worker:Ljava/util/concurrent/ExecutorService;

    .line 50
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/gmodvr/flat/UpdateManager;->main:Landroid/os/Handler;

    .line 51
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/gmodvr/flat/UpdateManager;->listeners:Ljava/util/Set;

    .line 58
    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager;->context:Landroid/content/Context;

    .line 59
    const-string v2, "gdroid_updates"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    .line 60
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "updates"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    .line 62
    const-string v3, ""

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 64
    :try_start_3b
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4a

    invoke-static {v6}, Lcom/gmodvr/flat/UpdateRelease$Candidate;->decode(Ljava/lang/String;)Lcom/gmodvr/flat/UpdateRelease$Candidate;

    move-result-object v6
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_49} :catch_8d
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_49} :catch_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_49} :catch_8d

    goto :goto_4b

    :cond_4a
    move-object v6, v5

    :goto_4b
    if-eqz v6, :cond_89

    .line 66
    :try_start_4d
    const-string v7, "arm64-v8a"

    iget-object v8, v6, Lcom/gmodvr/flat/UpdateRelease$Candidate;->abi:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_55} :catch_60
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_55} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_55} :catch_60

    const-string v8, "0.1.29"

    if-eqz v7, :cond_62

    .line 67
    :try_start_59
    invoke-virtual {v6, v8}, Lcom/gmodvr/flat/UpdateRelease$Candidate;->newerThan(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_89

    goto :goto_62

    :catch_60
    move-object v5, v6

    goto :goto_8d

    .line 71
    :cond_62
    :goto_62
    iget-object v7, v6, Lcom/gmodvr/flat/UpdateRelease$Candidate;->tag:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/gmodvr/flat/UpdateRelease;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_8d

    .line 72
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_8d

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GDroid "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/gmodvr/flat/UpdateRelease$Candidate;->tag:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is installed."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_88} :catch_60
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_88} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_88} :catch_60

    goto :goto_8b

    :cond_89
    move-object v2, v3

    move-object v5, v6

    :goto_8b
    move-object v11, v5

    goto :goto_8f

    :catch_8d
    :cond_8d
    :goto_8d
    move-object v2, v3

    goto :goto_8b

    .line 78
    :goto_8f
    invoke-direct {p0, v11, v2}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    .line 79
    iget-object v2, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_d6

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    if-eqz v11, :cond_d0

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    if-eqz v2, :cond_d0

    .line 83
    new-instance p1, Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "confirmation"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 84
    sget-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->INSTALLING:Lcom/gmodvr/flat/UpdateManager$Phase;

    :goto_bf
    move-object v6, v0

    goto :goto_c4

    :cond_c1
    sget-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->CONFIRMATION:Lcom/gmodvr/flat/UpdateManager$Phase;

    goto :goto_bf

    :goto_c4
    const-string v8, "Installation pending. Continue or cancel to retry."

    iget-wide v9, v11, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    move-object v5, p1

    move-object v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/gmodvr/flat/UpdateManager$Snapshot;-><init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    goto :goto_d6

    .line 87
    :cond_d0
    :try_start_d0
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_d3
    .catch Ljava/lang/RuntimeException; {:try_start_d0 .. :try_end_d3} :catch_d3

    .line 88
    :catch_d3
    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->clearSession()V

    :cond_d6
    :goto_d6
    if-nez v11, :cond_e5

    .line 92
    iget-object p1, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    :cond_e5
    iget-object p1, p0, Lcom/gmodvr/flat/UpdateManager;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v11}, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static announces(ZLcom/gmodvr/flat/UpdateManager$Snapshot;)Z
    .registers 4

    .line 123
    iget-object v0, p1, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p0, :cond_16

    .line 124
    iget-object p0, p1, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object p1, Lcom/gmodvr/flat/UpdateManager$Phase;->AVAILABLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-eq p0, p1, :cond_17

    sget-object p1, Lcom/gmodvr/flat/UpdateManager$Phase;->CHECKING:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-eq p0, p1, :cond_17

    sget-object p1, Lcom/gmodvr/flat/UpdateManager$Phase;->IDLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-eq p0, p1, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public static checkDue(ZJJ)Z
    .registers 7

    .line 0
    if-eqz p0, :cond_16

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_14

    cmp-long p0, p3, p1

    if-ltz p0, :cond_14

    sub-long/2addr p3, p1

    const-wide/32 p0, 0x5265c00

    cmp-long p0, p3, p0

    if-ltz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private cleanFiles(Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 7

    .line 302
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 304
    :cond_9
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_36

    aget-object v3, v0, v2

    if-eqz p1, :cond_2a

    .line 305
    iget-object v4, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    invoke-static {v4, p1}, Lcom/gmodvr/flat/UpdateDownload;->apk(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    iget-object v4, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    .line 306
    invoke-static {v4, p1}, Lcom/gmodvr/flat/UpdateDownload;->part(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_33

    .line 307
    :cond_2a
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_36
    return-void
.end method

.method private declared-synchronized finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 311
    :try_start_2
    iput-boolean v0, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->publish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;
    .registers 3

    const-class v0, Lcom/gmodvr/flat/UpdateManager;

    monitor-enter v0

    .line 29
    :try_start_3
    sget-object v1, Lcom/gmodvr/flat/UpdateManager;->instance:Lcom/gmodvr/flat/UpdateManager;

    if-nez v1, :cond_15

    new-instance v1, Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/UpdateManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/gmodvr/flat/UpdateManager;->instance:Lcom/gmodvr/flat/UpdateManager;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_19

    .line 30
    :cond_15
    :goto_15
    sget-object p0, Lcom/gmodvr/flat/UpdateManager;->instance:Lcom/gmodvr/flat/UpdateManager;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_13

    monitor-exit v0

    return-object p0

    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_13

    throw p0
.end method

.method private synthetic lambda$check$1(Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 8

    .line 144
    :try_start_0
    new-instance v0, Lcom/gmodvr/flat/UpdateRelease;

    const-string v1, "https://api.github.com/repos/tinsarfal/GDroid/releases/latest"

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/gmodvr/flat/UpdateHttp;->read(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/gmodvr/flat/UpdateHttp;->text([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gmodvr/flat/UpdateRelease;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v1, "arm64-v8a"

    const-string v2, "0.1.29"

    invoke-virtual {v0, v1, v2}, Lcom/gmodvr/flat/UpdateRelease;->select(Ljava/lang/String;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateRelease$Candidate;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_20

    .line 146
    const-string v1, ""

    if-nez v0, :cond_22

    :try_start_1d
    const-string v2, "You are up to date."

    goto :goto_23

    :catch_20
    move-exception v0

    goto :goto_7e

    :cond_22
    move-object v2, v1

    :goto_23
    if-eqz v0, :cond_52

    .line 147
    iget-object v3, v0, Lcom/gmodvr/flat/UpdateRelease$Candidate;->tag:Ljava/lang/String;

    invoke-static {v3}, Lcom/gmodvr/flat/UpdateManager;->notNewerKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "not_newer"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GDroid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/gmodvr/flat/UpdateRelease$Candidate;->tag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on GitHub is not newer than this build."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    .line 154
    :cond_52
    iget-object v3, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "candidate"

    if-nez v0, :cond_5d

    goto :goto_61

    :cond_5d
    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateRelease$Candidate;->encode()Ljava/lang/String;

    move-result-object v1

    :goto_61
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 157
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/UpdateManager;->cleanFiles(Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    .line 158
    invoke-direct {p0, v0, v2}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V

    goto :goto_89

    .line 155
    :cond_76
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot save update information."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_7e} :catch_20

    .line 160
    :goto_7e
    invoke-static {v0}, Lcom/gmodvr/flat/UpdateManager;->readable(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V

    :goto_89
    return-void
.end method

.method private synthetic lambda$discard$4(Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 3

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/gmodvr/flat/UpdateDownload;->part(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/UpdateDownload;->remove(Ljava/io/File;)V

    .line 219
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/gmodvr/flat/UpdateDownload;->apk(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/UpdateDownload;->remove(Ljava/io/File;)V

    .line 220
    const-string v0, "Download removed."

    invoke-direct {p0, p1, v0}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_28

    :catch_1c
    move-exception v0

    .line 221
    invoke-static {v0}, Lcom/gmodvr/flat/UpdateManager;->readable(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V

    :goto_28
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->cleanFiles(Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    return-void
.end method

.method private synthetic lambda$notifyListeners$5()V
    .registers 4

    .line 316
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->listeners:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/gmodvr/flat/UpdateManager$Listener;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/UpdateManager$Listener;

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_19

    .line 317
    array-length p0, v0

    :goto_e
    if-ge v1, p0, :cond_18

    aget-object v2, v0, v1

    invoke-interface {v2}, Lcom/gmodvr/flat/UpdateManager$Listener;->changed()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    return-void

    :catchall_19
    move-exception v0

    .line 316
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private synthetic lambda$transfer$2(Lcom/gmodvr/flat/UpdateRelease$Candidate;JZ)V
    .registers 5

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/UpdateManager;->progress(Lcom/gmodvr/flat/UpdateRelease$Candidate;JZ)V

    return-void
.end method

.method private synthetic lambda$transfer$3(ZLcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/Runnable;)V
    .registers 12

    if-eqz p1, :cond_1f

    .line 176
    :try_start_2
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    invoke-static {v1, p2}, Lcom/gmodvr/flat/UpdateDownload;->apk(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, p0, v1, p2}, Lcom/gmodvr/flat/UpdateInstaller;->install(Landroid/content/Context;Lcom/gmodvr/flat/UpdateManager;Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    .line 177
    monitor-enter p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_19
    .catchall {:try_start_2 .. :try_end_e} :catchall_16

    const/4 v0, 0x0

    :try_start_f
    iput-boolean v0, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1c

    .line 178
    :try_start_12
    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateManager;->notifyListeners()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_19
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_4f

    :catchall_16
    move-exception p1

    goto/16 :goto_a3

    :catch_19
    move-exception v0

    goto/16 :goto_8d

    :catchall_1c
    move-exception v0

    .line 177
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0

    .line 180
    :cond_1f
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    new-instance v3, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda4;-><init>()V

    new-instance v4, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/UpdateInstaller$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/UpdateManager;)V

    new-instance v5, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p2}, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    new-instance v6, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda6;-><init>()V

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/gmodvr/flat/UpdateDownload;->downloadWithRetries(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;Lcom/gmodvr/flat/UpdateDownload$ConnectionFactory;Lcom/gmodvr/flat/UpdateDownload$Cancellation;Lcom/gmodvr/flat/UpdateDownload$Progress;Lcom/gmodvr/flat/UpdateDownload$Sleeper;)Ljava/io/File;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3a} :catch_19
    .catchall {:try_start_1e .. :try_end_3a} :catchall_16

    .line 183
    :try_start_3a
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->context:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/gmodvr/flat/UpdateInstaller;->verify(Landroid/content/Context;Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    :try_end_3f
    .catch Lcom/gmodvr/flat/UpdateInstaller$NotNewer; {:try_start_3a .. :try_end_3f} :catch_57
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_55
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_19
    .catchall {:try_start_3a .. :try_end_3f} :catchall_16

    .line 191
    :try_start_3f
    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;

    sget-object v3, Lcom/gmodvr/flat/UpdateManager$Phase;->READY:Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v5, ""

    iget-wide v6, p2, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    move-object v2, v0

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/gmodvr/flat/UpdateManager$Snapshot;-><init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4f} :catch_19
    .catchall {:try_start_3f .. :try_end_4f} :catchall_16

    .line 197
    :goto_4f
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager;->main:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a2

    :catch_55
    move-exception v1

    goto :goto_59

    :catch_57
    move-exception v1

    goto :goto_5d

    .line 190
    :goto_59
    :try_start_59
    invoke-static {v0}, Lcom/gmodvr/flat/UpdateDownload;->remove(Ljava/io/File;)V

    throw v1

    .line 185
    :goto_5d
    invoke-static {v0}, Lcom/gmodvr/flat/UpdateDownload;->remove(Ljava/io/File;)V

    .line 186
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "not_newer"

    iget-object v3, p2, Lcom/gmodvr/flat/UpdateRelease$Candidate;->tag:Ljava/lang/String;

    invoke-static {v3}, Lcom/gmodvr/flat/UpdateManager;->notNewerKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "candidate"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_87} :catch_19
    .catchall {:try_start_59 .. :try_end_87} :catchall_16

    .line 197
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager;->main:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_8d
    if-eqz p1, :cond_96

    .line 195
    :try_start_8f
    iget-boolean p1, p0, Lcom/gmodvr/flat/UpdateManager;->canceled:Z

    if-eqz p1, :cond_96

    .line 196
    const-string p1, "Installation canceled. Your current version is unchanged."

    goto :goto_9a

    :cond_96
    invoke-static {v0}, Lcom/gmodvr/flat/UpdateManager;->readable(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 195
    :goto_9a
    invoke-direct {p0, p2, p1}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_a1
    .catchall {:try_start_8f .. :try_end_a1} :catchall_16

    goto :goto_4f

    :goto_a2
    return-void

    .line 197
    :goto_a3
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager;->main:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw p1
.end method

.method private static notNewerKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyListeners()V
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->main:Landroid/os/Handler;

    new-instance v1, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/UpdateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized progress(Lcom/gmodvr/flat/UpdateRelease$Candidate;JZ)V
    .registers 12

    monitor-enter p0

    .line 203
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-nez p4, :cond_1b

    .line 204
    iget-wide v2, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1b

    iget-wide v2, p0, Lcom/gmodvr/flat/UpdateManager;->lastProgress:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_19

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_1b

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    goto :goto_35

    .line 205
    :cond_1b
    :try_start_1b
    iput-wide v0, p0, Lcom/gmodvr/flat/UpdateManager;->lastProgress:J

    .line 206
    new-instance v6, Lcom/gmodvr/flat/UpdateManager$Snapshot;

    if-eqz p4, :cond_25

    sget-object p4, Lcom/gmodvr/flat/UpdateManager$Phase;->VERIFYING:Lcom/gmodvr/flat/UpdateManager$Phase;

    :goto_23
    move-object v1, p4

    goto :goto_28

    :cond_25
    sget-object p4, Lcom/gmodvr/flat/UpdateManager$Phase;->DOWNLOADING:Lcom/gmodvr/flat/UpdateManager$Phase;

    goto :goto_23

    :goto_28
    const-string v3, ""

    move-object v0, v6

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/UpdateManager$Snapshot;-><init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V

    invoke-direct {p0, v6}, Lcom/gmodvr/flat/UpdateManager;->publish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_19

    .line 207
    monitor-exit p0

    return-void

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_19

    throw p1
.end method

.method private declared-synchronized publish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    .registers 2

    monitor-enter p0

    .line 312
    :try_start_1
    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateManager;->notifyListeners()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public static readable(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 2

    .line 321
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_7

    const-string p0, "Cannot reach GitHub. Check your internet connection and try again."

    return-object p0

    .line 322
    :cond_7
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_e

    const-string p0, "The connection timed out. Retry to resume the download."

    return-object p0

    .line 323
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const-string p0, "The update could not be completed. Please try again."

    :cond_1c
    return-object p0
.end method

.method private resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;
    .registers 12

    if-nez p1, :cond_f

    .line 294
    new-instance p0, Lcom/gmodvr/flat/UpdateManager$Snapshot;

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->IDLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/UpdateManager$Snapshot;-><init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V

    return-object p0

    .line 295
    :cond_f
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/gmodvr/flat/UpdateDownload;->apk(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object v0

    .line 296
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager;->directory:Ljava/io/File;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/UpdateDownload;->part(Ljava/io/File;Lcom/gmodvr/flat/UpdateRelease$Candidate;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 297
    new-instance p0, Lcom/gmodvr/flat/UpdateManager$Snapshot;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/gmodvr/flat/UpdateManager$Phase;->READY:Lcom/gmodvr/flat/UpdateManager$Phase;

    :goto_29
    move-object v4, v3

    goto :goto_37

    :cond_2b
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_34

    sget-object v3, Lcom/gmodvr/flat/UpdateManager$Phase;->PAUSED:Lcom/gmodvr/flat/UpdateManager$Phase;

    goto :goto_29

    :cond_34
    sget-object v3, Lcom/gmodvr/flat/UpdateManager$Phase;->AVAILABLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    goto :goto_29

    .line 298
    :goto_37
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    :cond_41
    move-wide v7, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/gmodvr/flat/UpdateManager$Snapshot;-><init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public automatic()Z
    .registers 3

    .line 100
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "automatic"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized busy()Z
    .registers 2

    monitor-enter p0

    .line 101
    :try_start_1
    iget-boolean v0, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized cancelInstallation()V
    .registers 4

    monitor-enter p0

    .line 275
    :try_start_1
    iget-boolean v0, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->pause()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    goto :goto_47

    .line 276
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "session"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_a

    if-ltz v0, :cond_24

    .line 278
    :try_start_17
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 279
    :cond_24
    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->clearSession()V

    .line 280
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v0, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    const-string v1, "Installation canceled."

    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_34} :catch_35
    .catchall {:try_start_17 .. :try_end_34} :catchall_a

    goto :goto_45

    .line 284
    :catch_35
    :try_start_35
    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->clearSession()V

    .line 285
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v0, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    const-string v1, "Installation canceled."

    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_a

    .line 287
    :goto_45
    monitor-exit p0

    return-void

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_a

    throw v0
.end method

.method public declared-synchronized check()V
    .registers 9

    monitor-enter p0

    .line 137
    :try_start_1
    iget-boolean v0, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z

    if-nez v0, :cond_46

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->installing()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_46

    :cond_c
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z

    .line 139
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v0, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    .line 140
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    new-instance v7, Lcom/gmodvr/flat/UpdateManager$Snapshot;

    sget-object v2, Lcom/gmodvr/flat/UpdateManager$Phase;->CHECKING:Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v4, ""

    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-wide v5, v1, Lcom/gmodvr/flat/UpdateManager$Snapshot;->downloaded:J

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/gmodvr/flat/UpdateManager$Snapshot;-><init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/gmodvr/flat/UpdateManager;->publish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V

    .line 142
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda7;-><init>(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 163
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    goto :goto_48

    .line 137
    :cond_46
    :goto_46
    monitor-exit p0

    return-void

    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_44

    throw v0
.end method

.method public checkAutomatic()V
    .registers 6

    .line 133
    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->automatic()Z

    move-result v0

    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "last_check"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/gmodvr/flat/UpdateManager;->checkDue(ZJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->check()V

    :cond_1b
    return-void
.end method

.method public declared-synchronized clearSession()V
    .registers 3

    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirmation"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 234
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public declared-synchronized confirmation()Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "confirmation"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    .line 268
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_16
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_16} :catch_1a
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    goto :goto_2c

    :catch_1a
    move-exception v0

    goto :goto_24

    .line 267
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No installation confirmation is pending."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catch Ljava/net/URISyntaxException; {:try_start_1c .. :try_end_24} :catch_1a
    .catchall {:try_start_1c .. :try_end_24} :catchall_18

    .line 270
    :goto_24
    :try_start_24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The installation must be canceled and retried."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_18

    throw v0
.end method

.method public declared-synchronized discard()V
    .registers 4

    monitor-enter p0

    .line 212
    :try_start_1
    iget-boolean v0, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->installing()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_25

    .line 213
    :cond_c
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v0, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_23

    if-nez v0, :cond_14

    .line 214
    monitor-exit p0

    return-void

    :cond_14
    const/4 v1, 0x1

    .line 215
    :try_start_15
    iput-boolean v1, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z

    .line 216
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_23

    .line 223
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    goto :goto_27

    .line 212
    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_23

    throw v0
.end method

.method public declared-synchronized installResult(Landroid/content/Intent;)V
    .registers 8

    monitor-enter p0

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "session"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "session_token"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gdroid-update://install/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-ltz v0, :cond_ce

    .line 241
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ce

    const-string v1, "com.gmodvr.flat.UPDATE_INSTALL_STATUS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 242
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    const-string v1, "android.content.pm.extra.SESSION_ID"

    .line 243
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_59

    goto/16 :goto_ce

    .line 244
    :cond_59
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9c

    .line 246
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_73

    .line 248
    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->cancelInstallation()V
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_71

    .line 249
    monitor-exit p0

    return-void

    :catchall_71
    move-exception p1

    goto :goto_d0

    .line 251
    :cond_73
    :try_start_73
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "confirmation"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    new-instance p1, Lcom/gmodvr/flat/UpdateManager$Snapshot;

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->CONFIRMATION:Lcom/gmodvr/flat/UpdateManager$Phase;

    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v2, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    const-string v3, ""

    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-wide v4, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->downloaded:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/UpdateManager$Snapshot;-><init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->publish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V

    goto :goto_cc

    .line 254
    :cond_9c
    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->clearSession()V

    .line 255
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v1, v1, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    if-nez v0, :cond_a8

    .line 256
    const-string p1, "Update installed. Reopen GDroid."

    goto :goto_c5

    :cond_a8
    const/4 v2, 0x3

    if-ne v0, v2, :cond_ae

    .line 258
    const-string p1, "Installation canceled. Your current version is unchanged."

    goto :goto_c5

    .line 260
    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installation failed. Your current version is unchanged. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 255
    :goto_c5
    invoke-direct {p0, v1, p1}, Lcom/gmodvr/flat/UpdateManager;->resting(Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/UpdateManager;->finish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_cc
    .catchall {:try_start_73 .. :try_end_cc} :catchall_71

    .line 262
    :goto_cc
    monitor-exit p0

    return-void

    .line 243
    :cond_ce
    :goto_ce
    monitor-exit p0

    return-void

    :goto_d0
    :try_start_d0
    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_71

    throw p1
.end method

.method public installing()Z
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v0, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->INSTALLING:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-eq v0, v1, :cond_13

    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->CONFIRMATION:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isCanceled()Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lcom/gmodvr/flat/UpdateManager;->canceled:Z

    return p0
.end method

.method public declared-synchronized listen(Lcom/gmodvr/flat/UpdateManager$Listener;)V
    .registers 3

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized message(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 290
    :try_start_1
    new-instance v6, Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v1, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v2, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-wide v4, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->downloaded:J

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/UpdateManager$Snapshot;-><init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V

    invoke-direct {p0, v6}, Lcom/gmodvr/flat/UpdateManager;->publish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 291
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public declared-synchronized pause()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 209
    :try_start_2
    iput-boolean v0, p0, Lcom/gmodvr/flat/UpdateManager;->canceled:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized recordSession(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "session"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "session_token"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "confirmation"

    .line 228
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_31

    if-eqz p1, :cond_29

    .line 229
    monitor-exit p0

    return-object v0

    .line 228
    :cond_29
    :try_start_29
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot save the installation session."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_31
    move-exception p1

    .line 229
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public setAutomatic(Z)V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "automatic"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_14

    .line 110
    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->checkAutomatic()V

    :cond_14
    return-void
.end method

.method public snapshot()Lcom/gmodvr/flat/UpdateManager$Snapshot;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    return-object p0
.end method

.method public declared-synchronized transfer(ZLjava/lang/Runnable;)Z
    .registers 12

    monitor-enter p0

    .line 167
    :try_start_1
    iget-boolean v0, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->installing()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v0, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    if-nez v0, :cond_13

    goto :goto_47

    .line 168
    :cond_13
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-object v0, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    const/4 v8, 0x1

    .line 169
    iput-boolean v8, p0, Lcom/gmodvr/flat/UpdateManager;->busy:Z

    .line 170
    iput-boolean v1, p0, Lcom/gmodvr/flat/UpdateManager;->canceled:Z

    const-wide/16 v1, 0x0

    .line 171
    iput-wide v1, p0, Lcom/gmodvr/flat/UpdateManager;->lastProgress:J

    .line 172
    new-instance v1, Lcom/gmodvr/flat/UpdateManager$Snapshot;

    if-eqz p1, :cond_2a

    sget-object v2, Lcom/gmodvr/flat/UpdateManager$Phase;->INSTALLING:Lcom/gmodvr/flat/UpdateManager$Phase;

    :goto_26
    move-object v3, v2

    goto :goto_2d

    :catchall_28
    move-exception p1

    goto :goto_49

    :cond_2a
    sget-object v2, Lcom/gmodvr/flat/UpdateManager$Phase;->DOWNLOADING:Lcom/gmodvr/flat/UpdateManager$Phase;

    goto :goto_26

    :goto_2d
    const-string v5, ""

    iget-object v2, p0, Lcom/gmodvr/flat/UpdateManager;->state:Lcom/gmodvr/flat/UpdateManager$Snapshot;

    iget-wide v6, v2, Lcom/gmodvr/flat/UpdateManager$Snapshot;->downloaded:J

    move-object v2, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/gmodvr/flat/UpdateManager$Snapshot;-><init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lcom/gmodvr/flat/UpdateManager;->publish(Lcom/gmodvr/flat/UpdateManager$Snapshot;)V

    .line 173
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateManager;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/UpdateManager;ZLcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_28

    .line 199
    monitor-exit p0

    return v8

    .line 167
    :cond_47
    :goto_47
    monitor-exit p0

    return v1

    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_28

    throw p1
.end method

.method public declared-synchronized unlisten(Lcom/gmodvr/flat/UpdateManager$Listener;)V
    .registers 3

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

###### Class com.gmodvr.flat.UpdateManager.Listener (com.gmodvr.flat.UpdateManager$Listener)
.class interface abstract Lcom/gmodvr/flat/UpdateManager$Listener;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract changed()V
.end method

###### Class com.gmodvr.flat.UpdateManager.Phase (com.gmodvr.flat.UpdateManager$Phase)
.class final enum Lcom/gmodvr/flat/UpdateManager$Phase;
.super Ljava/lang/Enum;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/UpdateManager$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/UpdateManager$Phase;

.field public static final enum AVAILABLE:Lcom/gmodvr/flat/UpdateManager$Phase;

.field public static final enum CHECKING:Lcom/gmodvr/flat/UpdateManager$Phase;

.field public static final enum CONFIRMATION:Lcom/gmodvr/flat/UpdateManager$Phase;

.field public static final enum DOWNLOADING:Lcom/gmodvr/flat/UpdateManager$Phase;

.field public static final enum IDLE:Lcom/gmodvr/flat/UpdateManager$Phase;

.field public static final enum INSTALLING:Lcom/gmodvr/flat/UpdateManager$Phase;

.field public static final enum PAUSED:Lcom/gmodvr/flat/UpdateManager$Phase;

.field public static final enum READY:Lcom/gmodvr/flat/UpdateManager$Phase;

.field public static final enum VERIFYING:Lcom/gmodvr/flat/UpdateManager$Phase;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/UpdateManager$Phase;
    .registers 9

    .line 23
    sget-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->IDLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->CHECKING:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v2, Lcom/gmodvr/flat/UpdateManager$Phase;->AVAILABLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v3, Lcom/gmodvr/flat/UpdateManager$Phase;->DOWNLOADING:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v4, Lcom/gmodvr/flat/UpdateManager$Phase;->VERIFYING:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v5, Lcom/gmodvr/flat/UpdateManager$Phase;->PAUSED:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v6, Lcom/gmodvr/flat/UpdateManager$Phase;->READY:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v7, Lcom/gmodvr/flat/UpdateManager$Phase;->INSTALLING:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v8, Lcom/gmodvr/flat/UpdateManager$Phase;->CONFIRMATION:Lcom/gmodvr/flat/UpdateManager$Phase;

    filled-new-array/range {v0 .. v8}, [Lcom/gmodvr/flat/UpdateManager$Phase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/UpdateManager$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->IDLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v1, "CHECKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/UpdateManager$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->CHECKING:Lcom/gmodvr/flat/UpdateManager$Phase;

    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/UpdateManager$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->AVAILABLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/UpdateManager$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->DOWNLOADING:Lcom/gmodvr/flat/UpdateManager$Phase;

    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v1, "VERIFYING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/UpdateManager$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->VERIFYING:Lcom/gmodvr/flat/UpdateManager$Phase;

    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/UpdateManager$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->PAUSED:Lcom/gmodvr/flat/UpdateManager$Phase;

    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v1, "READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/UpdateManager$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->READY:Lcom/gmodvr/flat/UpdateManager$Phase;

    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v1, "INSTALLING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/UpdateManager$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->INSTALLING:Lcom/gmodvr/flat/UpdateManager$Phase;

    new-instance v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    const-string v1, "CONFIRMATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/UpdateManager$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->CONFIRMATION:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-static {}, Lcom/gmodvr/flat/UpdateManager$Phase;->$values()[Lcom/gmodvr/flat/UpdateManager$Phase;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->$VALUES:[Lcom/gmodvr/flat/UpdateManager$Phase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/UpdateManager$Phase;
    .registers 2

    .line 23
    const-class v0, Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/UpdateManager$Phase;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/UpdateManager$Phase;
    .registers 1

    .line 23
    sget-object v0, Lcom/gmodvr/flat/UpdateManager$Phase;->$VALUES:[Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/UpdateManager$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/UpdateManager$Phase;

    return-object v0
.end method

###### Class com.gmodvr.flat.UpdateManager.Snapshot (com.gmodvr.flat.UpdateManager$Snapshot)
.class final Lcom/gmodvr/flat/UpdateManager$Snapshot;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field final candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

.field final downloaded:J

.field final message:Ljava/lang/String;

.field final phase:Lcom/gmodvr/flat/UpdateManager$Phase;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/UpdateManager$Phase;Lcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/String;J)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    .line 40
    iput-object p2, p0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    .line 41
    iput-object p3, p0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->message:Ljava/lang/String;

    .line 42
    iput-wide p4, p0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->downloaded:J

    return-void
.end method

###### Class com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda0 (com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/UpdateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/UpdateManager;

    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->$r8$lambda$lV0kgJQL3pSZcLkBOyQ54nvz5oc(Lcom/gmodvr/flat/UpdateManager;)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda1 (com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateManager;

.field public final synthetic f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iput-object p2, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda1;->f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda1;->f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/UpdateManager;->$r8$lambda$RupmVmHtL6Z4oxyW7k-YzgVrH-U(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda2 (com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateManager;

.field public final synthetic f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iput-object p2, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda2;->f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda2;->f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/UpdateManager;->$r8$lambda$Nmd_wPgTF1AGng18dyxcH5TmjQM(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda3 (com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateManager;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/gmodvr/flat/UpdateRelease$Candidate;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateManager;ZLcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iput-boolean p2, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;->f$2:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    iput-object p4, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iget-boolean v1, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;->f$2:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Lcom/gmodvr/flat/UpdateManager;->$r8$lambda$Rbq-Uwz1eSIyMytX15kiF8XZPPQ(Lcom/gmodvr/flat/UpdateManager;ZLcom/gmodvr/flat/UpdateRelease$Candidate;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda4 (com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/UpdateDownload$ConnectionFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final open(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lcom/gmodvr/flat/UpdateHttp;->open(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda5 (com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/UpdateDownload$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateManager;

.field public final synthetic f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iput-object p2, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda5;->f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    return-void
.end method


# virtual methods
.method public final update(JZ)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda5;->f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/gmodvr/flat/UpdateManager;->$r8$lambda$fV747-mSdOXPfzdo9D-QPMoTPgo(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;JZ)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda6 (com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/UpdateDownload$Sleeper;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sleep(J)V
    .registers 3

    .line 0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda7 (com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateManager;

.field public final synthetic f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iput-object p2, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda7;->f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/UpdateManager;

    iget-object p0, p0, Lcom/gmodvr/flat/UpdateManager$$ExternalSyntheticLambda7;->f$1:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/UpdateManager;->$r8$lambda$Lt5wodJF2VBzRE6GUIMeEaTVdb8(Lcom/gmodvr/flat/UpdateManager;Lcom/gmodvr/flat/UpdateRelease$Candidate;)V

    return-void
.end method
