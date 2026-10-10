###### Class com.gmodvr.flat.CrashReporter (com.gmodvr.flat.CrashReporter)
.class final Lcom/gmodvr/flat/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# static fields
.field static final BANNER_SEEN:Ljava/lang/String; = "banner_seen"

.field static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field static final EXIT_LAST_SEEN:Ljava/lang/String; = "exit_last_seen"

.field static final PREFS:Ljava/lang/String; = "diagnostics"

.field private static final TAG:Ljava/lang/String; = "GDroid"

.field static final TRACE_CAP:I = 0x100000

.field private static installed:Z


# direct methods
.method public static synthetic $r8$lambda$X8Die7UcVpPzI_oycpPkQlPUcOM(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t8-UEQUmqlgmy55ueqLD0CXWwHs(Ljava/io/File;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/CrashReporter;->lambda$install$1(Ljava/io/File;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/CrashReporter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appVersion()Ljava/lang/String;
    .registers 1

    .line 50
    const-string v0, "0.1.29 (43) release"

    return-object v0
.end method

.method public static bannerSeen(Landroid/content/Context;)J
    .registers 4

    .line 230
    const-string v0, "diagnostics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "banner_seen"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static device()Ljava/lang/String;
    .registers 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / API "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "diagnostics"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_2d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GDroid"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-object v0
.end method

.method public static exitHistory(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/16 v0, 0x10

    .line 215
    invoke-static {p0, v0}, Lcom/gmodvr/flat/CrashReporter;->exits(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/gmodvr/flat/DiagnosticReports;->cleanExitMarkers(Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApplicationExitInfo, newest first ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline10;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v3

    .line 219
    invoke-static {v3}, Lcom/gmodvr/flat/CrashReporter;->record(Landroid/app/ApplicationExitInfo;)Lcom/gmodvr/flat/ExitReasons$Record;

    move-result-object v3

    .line 220
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/gmodvr/flat/ExitReasons;->format(Lcom/gmodvr/flat/ExitReasons$Record;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v4, "classified: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1}, Lcom/gmodvr/flat/ExitReasons;->cleanExit(Lcom/gmodvr/flat/ExitReasons$Record;Ljava/util/Map;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/gmodvr/flat/ExitReasons;->abnormal(Lcom/gmodvr/flat/ExitReasons$Record;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 222
    const-string v3, "abnormal"

    goto :goto_6f

    :cond_6d
    const-string v3, "normal"

    .line 221
    :goto_6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 224
    :cond_78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static exits(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 137
    :cond_b
    :try_start_b
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline11;->m(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_25

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_23

    goto :goto_25

    :catch_23
    move-exception p0

    goto :goto_26

    :cond_25
    :goto_25
    return-object p0

    .line 141
    :goto_26
    const-string p1, "GDroid"

    const-string v0, "Exit reasons"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static exportEnvironment(Landroid/content/Context;)V
    .registers 3

    .line 109
    :try_start_0
    const-string v0, "GMODVR_DIAG_DIR"

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    const-string p0, "GMODVR_APP_VERSION"

    invoke-static {}, Lcom/gmodvr/flat/CrashReporter;->appVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    const-string p0, "GMODVR_DEBUG_APP"

    invoke-static {p0}, Landroid/system/Os;->unsetenv(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception p0

    .line 114
    const-string v0, "GDroid"

    const-string v1, "Diagnostics environment"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public static declared-synchronized install(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lcom/gmodvr/flat/CrashReporter;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-boolean v1, Lcom/gmodvr/flat/CrashReporter;->installed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 63
    :try_start_a
    sput-boolean v1, Lcom/gmodvr/flat/CrashReporter;->installed:Z

    .line 64
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 65
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 67
    new-instance v3, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v1, v2}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda13;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_22

    .line 77
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public static javaCrashReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/Throwable;)Ljava/lang/String;
    .registers 11

    .line 82
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 83
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p8, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 84
    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GDroid Java crash\napp: "

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nprocess: "

    invoke-virtual {p8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nthread: "

    invoke-virtual {p8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {p8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")\ntime: "

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {p6, p7}, Lcom/gmodvr/flat/ExitReasons;->time(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")\ndevice: "

    invoke-virtual {p8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\n"

    invoke-virtual {p8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$install$1(Ljava/io/File;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 15

    .line 69
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 70
    new-instance v9, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java-crash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/gmodvr/flat/CrashReporter;->appVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {}, Lcom/gmodvr/flat/CrashReporter;->device()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/gmodvr/flat/CrashReporter;->javaCrashReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 70
    invoke-static {v9, p0}, Lcom/gmodvr/flat/CrashReporter;->writeAtomically(Ljava/io/File;[B)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3e

    :catchall_3e
    if-eqz p2, :cond_44

    .line 74
    invoke-interface {p2, p3, p4}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 75
    :cond_44
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_50
    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 34
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "GDroid-diagnostics"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method public static markBannerSeen(Landroid/content/Context;J)V
    .registers 5

    .line 235
    const-string v0, "diagnostics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-string v0, "banner_seen"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static markCleanExit(Landroid/content/Context;)V
    .registers 5

    .line 120
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clean-exit-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_38

    .line 121
    :try_start_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_3a

    .line 122
    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_4b

    :catch_38
    move-exception p0

    goto :goto_44

    :catchall_3a
    move-exception p0

    .line 120
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v0

    :try_start_40
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_43
    throw p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_38

    .line 123
    :goto_44
    const-string v0, "GDroid"

    const-string v1, "Clean-exit marker"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    return-void
.end method

.method public static readCapped(Ljava/io/InputStream;I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    .line 206
    new-array v2, v1, [B

    .line 208
    :goto_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-ge v3, p1, :cond_24

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_24

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 209
    :cond_24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static record(Landroid/app/ApplicationExitInfo;)Lcom/gmodvr/flat/ExitReasons$Record;
    .registers 15

    .line 130
    new-instance v13, Lcom/gmodvr/flat/ExitReasons$Record;

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v1

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v3

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v5

    .line 131
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline4;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v6

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v7

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline6;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v8

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline7;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v10

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline8;->m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/gmodvr/flat/ExitReasons$Record;-><init>(JILjava/lang/String;IIIJJLjava/lang/String;)V

    return-object v13
.end method

.method public static recordExits(Landroid/content/Context;)V
    .registers 16

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_7

    return-void

    .line 154
    :cond_7
    const-string v0, "diagnostics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 155
    const-string v3, "exit_last_seen"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const/16 v4, 0xa

    .line 156
    invoke-static {p0, v4}, Lcom/gmodvr/flat/CrashReporter;->exits(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 157
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 158
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline10;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v10

    invoke-static {v10}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_26

    :cond_3d
    cmp-long v5, v1, v5

    if-gez v5, :cond_55

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-interface {p0, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 163
    :cond_55
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 164
    invoke-static {v5}, Lcom/gmodvr/flat/DiagnosticReports;->cleanExitMarkers(Ljava/io/File;)Ljava/util/Map;

    move-result-object v6

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline10;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v9

    .line 167
    invoke-static {v9}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v10

    cmp-long v10, v10, v1

    if-gtz v10, :cond_7c

    goto :goto_65

    .line 168
    :cond_7c
    invoke-static {v9}, Lcom/gmodvr/flat/CrashReporter;->record(Landroid/app/ApplicationExitInfo;)Lcom/gmodvr/flat/ExitReasons$Record;

    move-result-object v10

    .line 169
    invoke-static {v10, v6}, Lcom/gmodvr/flat/ExitReasons;->cleanExit(Lcom/gmodvr/flat/ExitReasons$Record;Ljava/util/Map;)Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 170
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "clean-exit-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/gmodvr/flat/ExitReasons$Record;->pid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 171
    :cond_a1
    invoke-static {v10, p0, v11}, Lcom/gmodvr/flat/ExitReasons;->abnormal(Lcom/gmodvr/flat/ExitReasons$Record;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_a8

    goto :goto_65

    .line 172
    :cond_a8
    :try_start_a8
    invoke-static {v5, v9, v10}, Lcom/gmodvr/flat/CrashReporter;->writeExitReport(Ljava/io/File;Landroid/app/ApplicationExitInfo;Lcom/gmodvr/flat/ExitReasons$Record;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_65

    :catch_ac
    move-exception v9

    .line 173
    const-string v10, "GDroid"

    const-string v11, "Exit report"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    :cond_b5
    cmp-long p0, v7, v1

    if-lez p0, :cond_c4

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c4
    return-void
.end method

.method public static scan(Landroid/content/Context;)Lcom/gmodvr/flat/DiagnosticReports$Report;
    .registers 11

    .line 241
    :try_start_0
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->recordExits(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "GDroid"

    const-string v2, "Exit scan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :goto_c
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v7, 0x3

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x5

    const-wide/32 v5, 0x400000

    move-object v3, v0

    .line 243
    invoke-static/range {v3 .. v9}, Lcom/gmodvr/flat/DiagnosticReports;->prune(Ljava/io/File;IJIJ)Ljava/util/List;

    .line 245
    invoke-static {v0}, Lcom/gmodvr/flat/DiagnosticReports;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->bannerSeen(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/gmodvr/flat/DiagnosticReports;->bannerReport(Ljava/util/List;J)Lcom/gmodvr/flat/DiagnosticReports$Report;

    move-result-object p0

    return-object p0
.end method

.method public static writeAtomically(Ljava/io/File;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 97
    :try_start_1f
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 98
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_4d

    .line 100
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 101
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_36

    return-void

    :cond_36
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rename "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4d
    move-exception p0

    .line 96
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw p0
.end method

.method private static writeExitReport(Ljava/io/File;Landroid/app/ApplicationExitInfo;Lcom/gmodvr/flat/ExitReasons$Record;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const-string v0, ")\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/gmodvr/flat/ExitReasons$Record;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/gmodvr/flat/ExitReasons$Record;->pid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GDroid abnormal exit\napp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gmodvr/flat/CrashReporter;->appVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ndevice: "

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gmodvr/flat/CrashReporter;->device()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/gmodvr/flat/ExitReasons;->format(Lcom/gmodvr/flat/ExitReasons$Record;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x100000

    const/4 v5, 0x0

    .line 184
    :try_start_70
    invoke-static {p1}, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticApiModelOutline9;->m(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_85

    if-eqz p1, :cond_87

    .line 185
    :try_start_76
    invoke-static {p1, v3}, Lcom/gmodvr/flat/CrashReporter;->readCapped(Ljava/io/InputStream;I)[B

    move-result-object v5
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7b

    goto :goto_87

    :catchall_7b
    move-exception v6

    .line 184
    :try_start_7c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception p1

    :try_start_81
    invoke-virtual {v6, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_84
    throw v6

    :catch_85
    move-exception p1

    goto :goto_8d

    :cond_87
    :goto_87
    if-eqz p1, :cond_9c

    .line 186
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8c} :catch_85

    goto :goto_9c

    .line 187
    :goto_8d
    const-string v6, "trace: unreadable ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9c
    :goto_9c
    if-eqz v5, :cond_105

    .line 190
    iget p1, p2, Lcom/gmodvr/flat/ExitReasons$Record;->reason:I

    const/4 p2, 0x5

    const-string v6, ""

    if-ne p1, p2, :cond_e4

    .line 191
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tombstone.pb"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-static {p1, v5}, Lcom/gmodvr/flat/CrashReporter;->writeAtomically(Ljava/io/File;[B)V

    .line 193
    const-string p2, "tombstone: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, Android tombstone protobuf"

    .line 194
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v5

    if-lt p1, v3, :cond_dd

    const-string v6, ", truncated"

    :cond_dd
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_105

    .line 197
    :cond_e4
    const-string p1, "\n---- trace"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v5

    if-lt p1, v3, :cond_ee

    const-string v6, " (truncated)"

    :cond_ee
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ----\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v5, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 198
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    :cond_105
    :goto_105
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gmodvr/flat/CrashReporter;->writeAtomically(Ljava/io/File;[B)V

    return-void
.end method

###### Class com.gmodvr.flat.CrashReporter$$ExternalSyntheticLambda12 (com.gmodvr.flat.CrashReporter$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/gmodvr/flat/CrashReporter;->$r8$lambda$X8Die7UcVpPzI_oycpPkQlPUcOM(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.CrashReporter$$ExternalSyntheticLambda13 (com.gmodvr.flat.CrashReporter$$ExternalSyntheticLambda13)
.class public final synthetic Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda13;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda13;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/CrashReporter$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gmodvr/flat/CrashReporter;->$r8$lambda$t8-UEQUmqlgmy55ueqLD0CXWwHs(Ljava/io/File;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
