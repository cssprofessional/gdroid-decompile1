###### Class com.gmodvr.flat.LogShare (com.gmodvr.flat.LogShare)
.class final Lcom/gmodvr/flat/LogShare;
.super Ljava/lang/Object;
.source "LogShare.java"


# static fields
.field static final GL_TIMEOUT_MS:J = 0x1388L

.field static final LOGCAT_TIMEOUT_MS:J = 0x3a98L

.field static final SHARE_KEEP_FILES:I = 0x3

.field static final SHARE_KEEP_MS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "GDroid"


# direct methods
.method public static synthetic $r8$lambda$QlYiE9JOpLMNg52ultkFKhzjiAQ(Ljava/io/InputStream;Lcom/gmodvr/flat/LogBundle$TailBuffer;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/LogShare;->lambda$captureLogcat$3(Ljava/io/InputStream;Lcom/gmodvr/flat/LogBundle$TailBuffer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RirDdrETJhP362WUbmcTa78Ri3U(Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Exception;Ljava/io/File;Landroid/content/Context;JLjava/lang/Runnable;)V
    .registers 8

    .line 0
    invoke-static/range {p0 .. p7}, Lcom/gmodvr/flat/LogShare;->lambda$share$0(Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Exception;Ljava/io/File;Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pdWNY4Ta94EZBzr2OplYO0OCVlc(Ljava/io/File;Ljava/io/File;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/LogShare;->lambda$cleanShareDir$2(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rlsucjNlRlrk1znTu1HJczvCbb8(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/gmodvr/flat/LogShare;->lambda$share$1(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const-string v0, "\n"

    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    .line 100
    :try_start_6
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->recordExits(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v1

    const-string v2, "GDroid"

    const-string v3, "Exit scan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    const/4 v5, 0x3

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x5

    const-wide/32 v3, 0x400000

    move-object v1, v8

    .line 101
    invoke-static/range {v1 .. v7}, Lcom/gmodvr/flat/DiagnosticReports;->prune(Ljava/io/File;IJIJ)Ljava/util/List;

    .line 104
    new-instance v1, Lcom/gmodvr/flat/LogBundle$Input;

    invoke-direct {v1}, Lcom/gmodvr/flat/LogBundle$Input;-><init>()V

    .line 105
    iput-object v8, v1, Lcom/gmodvr/flat/LogBundle$Input;->diagDir:Ljava/io/File;

    .line 106
    iput-object p1, v1, Lcom/gmodvr/flat/LogBundle$Input;->focus:Ljava/io/File;

    const-wide/16 v2, 0x1388

    .line 108
    :try_start_2a
    invoke-static {v2, v3}, Lcom/gmodvr/flat/GlProbe;->report(J)Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2f

    goto :goto_44

    :catchall_2f
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL probe failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    :goto_44
    :try_start_44
    invoke-static {p0, p1}, Lcom/gmodvr/flat/DeviceReport;->build(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gmodvr/flat/LogBundle$Input;->report:Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_4b

    goto :goto_67

    :catchall_4b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "report failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/gmodvr/flat/LogBundle$Input;->report:Ljava/lang/String;

    .line 110
    :goto_67
    :try_start_67
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->exitHistory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/gmodvr/flat/LogBundle$Input;->exitInfo:Ljava/lang/String;
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6e

    goto :goto_85

    :catchall_6e
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit history failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/gmodvr/flat/LogBundle$Input;->exitInfo:Ljava/lang/String;

    .line 111
    :goto_85
    invoke-static {v1}, Lcom/gmodvr/flat/LogShare;->captureLogcat(Lcom/gmodvr/flat/LogBundle$Input;)V

    .line 113
    invoke-static {p0}, Lcom/gmodvr/flat/DiagnosticsProvider;->shareDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_b0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_99

    goto :goto_b0

    :cond_99
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_b0
    :goto_b0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/gmodvr/flat/LogShare;->cleanShareDir(Ljava/io/File;J)V

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gdroid-logs-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-HHmmss"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".part"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 120
    :try_start_104
    invoke-static {v1, p0}, Lcom/gmodvr/flat/LogBundle;->write(Lcom/gmodvr/flat/LogBundle$Input;Ljava/io/OutputStream;)Ljava/util/List;
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_128

    .line 121
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 122
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_111

    return-object v0

    :cond_111
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot write "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_128
    move-exception p1

    .line 119
    :try_start_129
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_12d

    goto :goto_131

    :catchall_12d
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_131
    throw p1
.end method

.method private static captureLogcat(Lcom/gmodvr/flat/LogBundle$Input;)V
    .registers 10

    .line 138
    new-instance v0, Lcom/gmodvr/flat/LogBundle$TailBuffer;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Lcom/gmodvr/flat/LogBundle$TailBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 141
    :try_start_8
    new-instance v2, Ljava/lang/ProcessBuilder;

    const-string v3, "logcat"

    const-string v4, "-d"

    const-string v5, "-v"

    const-string v6, "threadtime"

    const-string v7, "-t"

    const-string v8, "20000"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 143
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2, v0}, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda3;-><init>(Ljava/io/InputStream;Lcom/gmodvr/flat/LogBundle$TailBuffer;)V

    const-string v2, "GDroid-logcat"

    invoke-direct {v4, v5, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 151
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 152
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3a98

    invoke-virtual {v1, v5, v6, v2}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 153
    const-string v2, "timed out after 15000 ms; partial output"

    iput-object v2, p0, Lcom/gmodvr/flat/LogBundle$Input;->logcatError:Ljava/lang/String;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    goto :goto_50

    :catch_4e
    move-exception v2

    goto :goto_56

    :cond_50
    :goto_50
    const-wide/16 v2, 0x7d0

    .line 156
    invoke-virtual {v4, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_55} :catch_4e

    goto :goto_61

    .line 158
    :goto_56
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/LogBundle$Input;->logcatError:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 159
    invoke-virtual {v1}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 161
    :cond_61
    :goto_61
    monitor-enter v0

    .line 162
    :try_start_62
    invoke-virtual {v0}, Lcom/gmodvr/flat/LogBundle$TailBuffer;->tail()[B

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/LogBundle$Input;->logcat:[B

    .line 163
    invoke-virtual {v0}, Lcom/gmodvr/flat/LogBundle$TailBuffer;->omitted()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gmodvr/flat/LogBundle$Input;->logcatOmitted:J

    .line 164
    monitor-exit v0

    return-void

    :catchall_70
    move-exception p0

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public static cleanShareDir(Ljava/io/File;J)V
    .registers 8

    .line 128
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 130
    :cond_7
    new-instance v0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 131
    :goto_10
    array-length v1, p0

    if-ge v0, v1, :cond_2d

    const/4 v1, 0x2

    if-ge v0, v1, :cond_25

    .line 132
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_2a

    :cond_25
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2d
    return-void
.end method

.method private static synthetic lambda$captureLogcat$3(Ljava/io/InputStream;Lcom/gmodvr/flat/LogBundle$TailBuffer;)V
    .registers 5

    const/high16 v0, 0x10000

    .line 144
    new-array v0, v0, [B

    .line 147
    :goto_4
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_14

    monitor-enter p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_14

    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {p1, v0, v2, v1}, Lcom/gmodvr/flat/LogBundle$TailBuffer;->write([BII)V

    monitor-exit p1

    goto :goto_4

    :catchall_11
    move-exception p0

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    :try_start_13
    throw p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-void
.end method

.method private static synthetic lambda$cleanShareDir$2(Ljava/io/File;Ljava/io/File;)I
    .registers 4

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$share$0(Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Exception;Ljava/io/File;Landroid/content/Context;JLjava/lang/Runnable;)V
    .registers 8

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    .line 70
    :catch_3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_43

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_43

    :cond_10
    if-nez p2, :cond_21

    if-nez p3, :cond_15

    goto :goto_21

    .line 75
    :cond_15
    invoke-static {p4, p5, p6}, Lcom/gmodvr/flat/CrashReporter;->markBannerSeen(Landroid/content/Context;J)V

    if-eqz p7, :cond_1d

    .line 76
    invoke-interface {p7}, Ljava/lang/Runnable;->run()V

    .line 77
    :cond_1d
    invoke-static {p1, p3}, Lcom/gmodvr/flat/LogShare;->open(Landroid/app/Activity;Ljava/io/File;)V

    return-void

    .line 72
    :cond_21
    :goto_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not collect logs: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_30

    const-string p2, "?"

    goto :goto_34

    :cond_30
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_34
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_43
    :goto_43
    return-void
.end method

.method private static synthetic lambda$share$1(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 21

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 58
    :try_start_3
    invoke-static/range {p0 .. p1}, Lcom/gmodvr/flat/LogShare;->build(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_1f

    .line 59
    :try_start_7
    invoke-static {p0}, Lcom/gmodvr/flat/CrashReporter;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/DiagnosticReports;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/DiagnosticReports;->newestCrash(Ljava/util/List;)Lcom/gmodvr/flat/DiagnosticReports$Report;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 60
    iget-wide v2, v0, Lcom/gmodvr/flat/DiagnosticReports$Report;->epochMs:J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_1b

    :catch_18
    move-exception v0

    :goto_19
    move-object v1, v0

    goto :goto_22

    :cond_1b
    :goto_1b
    move-object v9, v1

    move-wide v12, v2

    move-object v10, v4

    goto :goto_2a

    :catch_1f
    move-exception v0

    move-object v4, v1

    goto :goto_19

    .line 62
    :goto_22
    const-string v0, "GDroid"

    const-string v5, "Share logs"

    invoke-static {v0, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 68
    :goto_2a
    new-instance v0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;

    move-object v6, v0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v11, p0

    move-object/from16 v14, p5

    invoke-direct/range {v6 .. v14}, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;-><init>(Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Exception;Ljava/io/File;Landroid/content/Context;JLjava/lang/Runnable;)V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static open(Landroid/app/Activity;Ljava/io/File;)V
    .registers 6

    .line 83
    invoke-static {p0, p1}, Lcom/gmodvr/flat/DiagnosticsProvider;->uriFor(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/zip"

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 86
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/gmodvr/flat/R$string;->app_name:I

    .line 87
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " logs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gmodvr/flat/CrashReporter;->appVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/gmodvr/flat/R$string;->app_name:I

    .line 88
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gmodvr/flat/CrashReporter;->appVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gmodvr/flat/CrashReporter;->device()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 91
    const-string p1, "Share logs"

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    :try_start_84
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_a5

    :catch_88
    move-exception p1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No app can share the logs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_a5
    return-void
.end method

.method public static share(Landroid/app/Activity;Lcom/gmodvr/flat/Skin;Ljava/io/File;Ljava/lang/Runnable;)V
    .registers 12

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 40
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41c00000    # 24.0f

    .line 43
    invoke-virtual {p1, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {p1, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    invoke-virtual {p1, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {p1, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v4, 0x41580000    # 13.5f

    const v5, -0x72665d

    .line 44
    const-string v6, "Collecting the game\'s logs, crash reports and device details. Nothing is sent until you choose an app."

    invoke-virtual {p1, v6, v4, v5}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p1}, Lcom/gmodvr/flat/Skin;->progress()Landroid/widget/ProgressBar;

    move-result-object v4

    .line 46
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 47
    invoke-virtual {p1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v5, 0x40400000    # 3.0f

    .line 48
    invoke-virtual {p1, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 49
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Share logs"

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    .line 53
    sget-object p1, Lcom/gmodvr/flat/CrashReporter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v2, p2

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-interface {p1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gmodvr.flat.LogShare$$ExternalSyntheticLambda0 (com.gmodvr.flat.LogShare$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Landroid/app/AlertDialog;

.field public final synthetic f$4:Landroid/app/Activity;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$3:Landroid/app/AlertDialog;

    iput-object p5, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$4:Landroid/app/Activity;

    iput-object p6, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$2:Landroid/os/Handler;

    iget-object v3, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$3:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$4:Landroid/app/Activity;

    iget-object v5, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/gmodvr/flat/LogShare;->$r8$lambda$rlsucjNlRlrk1znTu1HJczvCbb8(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gmodvr.flat.LogShare$$ExternalSyntheticLambda1 (com.gmodvr.flat.LogShare$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/gmodvr/flat/LogShare;->$r8$lambda$pdWNY4Ta94EZBzr2OplYO0OCVlc(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.LogShare$$ExternalSyntheticLambda2 (com.gmodvr.flat.LogShare$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/Exception;

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:J

.field public final synthetic f$6:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Exception;Ljava/io/File;Landroid/content/Context;JLjava/lang/Runnable;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$3:Ljava/io/File;

    iput-object p5, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$4:Landroid/content/Context;

    iput-wide p6, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$5:J

    iput-object p8, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$6:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$3:Ljava/io/File;

    iget-object v4, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$4:Landroid/content/Context;

    iget-wide v5, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$5:J

    iget-object v7, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda2;->f$6:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v7}, Lcom/gmodvr/flat/LogShare;->$r8$lambda$RirDdrETJhP362WUbmcTa78Ri3U(Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/Exception;Ljava/io/File;Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

###### Class com.gmodvr.flat.LogShare$$ExternalSyntheticLambda3 (com.gmodvr.flat.LogShare$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;

.field public final synthetic f$1:Lcom/gmodvr/flat/LogBundle$TailBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Lcom/gmodvr/flat/LogBundle$TailBuffer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda3;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/LogBundle$TailBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda3;->f$0:Ljava/io/InputStream;

    iget-object p0, p0, Lcom/gmodvr/flat/LogShare$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/LogBundle$TailBuffer;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/LogShare;->$r8$lambda$QlYiE9JOpLMNg52ultkFKhzjiAQ(Ljava/io/InputStream;Lcom/gmodvr/flat/LogBundle$TailBuffer;)V

    return-void
.end method
