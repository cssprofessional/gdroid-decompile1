###### Class com.gmodvr.flat.LogBundle (com.gmodvr.flat.LogBundle)
.class final Lcom/gmodvr/flat/LogBundle;
.super Ljava/lang/Object;
.source "LogBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/LogBundle$Input;,
        Lcom/gmodvr/flat/LogBundle$TailBuffer;
    }
.end annotation


# static fields
.field static final LOGCAT_CAP:J = 0x400000L

.field static final MAX_SHADERS:I = 0x10

.field static final REPORTS_PER_KIND:I = 0x3

.field static final REPORT_CAP:J = 0x180000L

.field static final SESSIONS:I = 0x2

.field static final SESSION_CAP:J = 0x400000L

.field static final SHADERS_CAP:J = 0x200000L


# direct methods
.method public static synthetic $r8$lambda$vZXY8kGY39EoRXDgjvviPpqAcV4(Lcom/gmodvr/flat/DiagnosticReports$Report;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/LogBundle;->lambda$select$0(Lcom/gmodvr/flat/DiagnosticReports$Report;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains(Ljava/util/List;Lcom/gmodvr/flat/DiagnosticReports$Report;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ")Z"
        }
    .end annotation

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/DiagnosticReports$Report;

    iget-object v0, v0, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    iget-object v1, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private static copy(Ljava/io/RandomAccessFile;JJLjava/io/OutputStream;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/high16 p1, 0x10000

    .line 178
    new-array p2, p1, [B

    const-wide/16 v0, 0x0

    :goto_9
    cmp-long v2, v0, p3

    if-gez v2, :cond_23

    int-to-long v2, p1

    sub-long v4, p3, v0

    .line 181
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_1d

    goto :goto_23

    .line 183
    :cond_1d
    invoke-virtual {p5, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_9

    :cond_23
    :goto_23
    return-wide v0
.end method

.method private static file(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;Ljava/io/File;J)J
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "J)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p2

    .line 150
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 151
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 153
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 154
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x0

    .line 156
    :try_start_1b
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v1, "r"
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_86

    move-object/from16 v11, p3

    :try_start_21
    invoke-direct {v10, v11, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_7a

    cmp-long v1, v4, p4

    if-lez v1, :cond_6d

    .line 158
    :try_start_28
    const-string v1, ".pb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-wide/16 v2, 0x0

    move-object v1, v10

    move-wide/from16 v4, p4

    move-object v6, p0

    .line 160
    invoke-static/range {v1 .. v6}, Lcom/gmodvr/flat/LogBundle;->copy(Ljava/io/RandomAccessFile;JJLjava/io/OutputStream;)J

    move-result-wide v0

    :goto_3a
    move-wide v8, v0

    goto :goto_76

    :catchall_3c
    move-exception v0

    move-object v1, v0

    goto :goto_7c

    .line 162
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[... first "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v4, p4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes omitted ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 164
    array-length v0, v0

    int-to-long v12, v0

    move-object v1, v10

    move-wide/from16 v4, p4

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/gmodvr/flat/LogBundle;->copy(Ljava/io/RandomAccessFile;JJLjava/io/OutputStream;)J

    move-result-wide v0

    add-long/2addr v12, v0

    move-wide v8, v12

    goto :goto_76

    :cond_6d
    const-wide/16 v2, 0x0

    move-object v1, v10

    move-object v6, p0

    .line 167
    invoke-static/range {v1 .. v6}, Lcom/gmodvr/flat/LogBundle;->copy(Ljava/io/RandomAccessFile;JJLjava/io/OutputStream;)J

    move-result-wide v0
    :try_end_75
    .catchall {:try_start_28 .. :try_end_75} :catchall_3c

    goto :goto_3a

    .line 169
    :goto_76
    :try_start_76
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_b8

    :catch_7a
    move-exception v0

    goto :goto_89

    .line 156
    :goto_7c
    :try_start_7c
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_85

    :catchall_80
    move-exception v0

    move-object v2, v0

    :try_start_82
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_85
    throw v1
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_86} :catch_7a

    :catch_86
    move-exception v0

    move-object/from16 v11, p3

    .line 170
    :goto_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[could not read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 172
    :goto_b8
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-wide v8
.end method

.method private static synthetic lambda$select$0(Lcom/gmodvr/flat/DiagnosticReports$Report;)Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static select(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lcom/gmodvr/flat/DiagnosticReports;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SESSION:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/gmodvr/flat/DiagnosticReports;->newest(Ljava/util/List;Lcom/gmodvr/flat/DiagnosticReports$Kind;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    sget-object v1, Lcom/gmodvr/flat/DiagnosticReports$Kind;->NATIVE_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v2, Lcom/gmodvr/flat/DiagnosticReports$Kind;->JAVA_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v3, Lcom/gmodvr/flat/DiagnosticReports$Kind;->HANG:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v4, Lcom/gmodvr/flat/DiagnosticReports$Kind;->EXIT:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    filled-new-array {v1, v2, v3, v4}, [Lcom/gmodvr/flat/DiagnosticReports$Kind;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1d
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2d

    aget-object v3, v1, v2

    const/4 v4, 0x3

    .line 89
    invoke-static {p0, v3, v4}, Lcom/gmodvr/flat/DiagnosticReports;->newest(Ljava/util/List;Lcom/gmodvr/flat/DiagnosticReports$Kind;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2d
    if-eqz p1, :cond_53

    .line 92
    invoke-static {p1}, Lcom/gmodvr/flat/DiagnosticReports;->parse(Ljava/io/File;)Lcom/gmodvr/flat/DiagnosticReports$Report;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 94
    invoke-static {p0, p1}, Lcom/gmodvr/flat/DiagnosticReports;->sameGroup(Ljava/util/List;Lcom/gmodvr/flat/DiagnosticReports$Report;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3d
    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/DiagnosticReports$Report;

    .line 95
    invoke-static {v0, v1}, Lcom/gmodvr/flat/LogBundle;->contains(Ljava/util/List;Lcom/gmodvr/flat/DiagnosticReports$Report;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 98
    :cond_53
    new-instance p1, Ljava/util/ArrayList;

    sget-object v1, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SHADER_FAIL:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    const/16 v2, 0x10

    invoke-static {p0, v1, v2}, Lcom/gmodvr/flat/DiagnosticReports;->newest(Ljava/util/List;Lcom/gmodvr/flat/DiagnosticReports$Kind;I)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    new-instance p0, Lcom/gmodvr/flat/LogBundle$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gmodvr/flat/LogBundle$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 100
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static text(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 143
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 145
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static write(Lcom/gmodvr/flat/LogBundle$Input;Ljava/io/OutputStream;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/LogBundle$Input;",
            "Ljava/io/OutputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const-string v0, "logcat.txt"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v8, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    :try_start_c
    const-string p1, "report.txt"

    iget-object v1, p0, Lcom/gmodvr/flat/LogBundle$Input;->report:Ljava/lang/String;

    invoke-static {v8, v7, p1, v1}, Lcom/gmodvr/flat/LogBundle;->text(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/gmodvr/flat/LogBundle$Input;->exitInfo:Ljava/lang/String;

    if-eqz p1, :cond_20

    const-string v1, "exit-info.txt"

    invoke-static {v8, v7, v1, p1}, Lcom/gmodvr/flat/LogBundle;->text(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :catchall_1d
    move-exception p0

    goto/16 :goto_e6

    .line 116
    :cond_20
    :goto_20
    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 117
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Lcom/gmodvr/flat/LogBundle$Input;->logcatError:Ljava/lang/String;

    if-eqz p1, :cond_50

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[logcat: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gmodvr/flat/LogBundle$Input;->logcatError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/OutputStream;->write([B)V

    .line 119
    :cond_50
    iget-object p1, p0, Lcom/gmodvr/flat/LogBundle$Input;->logcat:[B

    if-eqz p1, :cond_59

    iget-wide v0, p0, Lcom/gmodvr/flat/LogBundle$Input;->logcatOmitted:J

    invoke-static {v8, p1, v0, v1}, Lcom/gmodvr/flat/LogBundle;->writeTail(Ljava/io/OutputStream;[BJ)V

    .line 120
    :cond_59
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 122
    iget-object p1, p0, Lcom/gmodvr/flat/LogBundle$Input;->diagDir:Ljava/io/File;

    if-eqz p1, :cond_e2

    .line 123
    new-instance v4, Ljava/io/File;

    iget-object p1, p0, Lcom/gmodvr/flat/LogBundle$Input;->diagDir:Ljava/io/File;

    const-string v0, "gl_info.txt"

    invoke-direct {v4, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_79

    const-string v3, "gl_info.txt"

    const-wide/32 v5, 0x180000

    move-object v1, v8

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/gmodvr/flat/LogBundle;->file(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;Ljava/io/File;J)J

    .line 126
    :cond_79
    iget-object p1, p0, Lcom/gmodvr/flat/LogBundle$Input;->diagDir:Ljava/io/File;

    iget-object p0, p0, Lcom/gmodvr/flat/LogBundle$Input;->focus:Ljava/io/File;

    invoke-static {p1, p0}, Lcom/gmodvr/flat/LogBundle;->select(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_88
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/DiagnosticReports$Report;

    .line 127
    iget-object v0, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v1, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SHADER_FAIL:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    if-ne v0, v1, :cond_c5

    const-wide/32 v0, 0x200000

    sub-long v5, v0, v11

    cmp-long v0, v5, v9

    if-gtz v0, :cond_a4

    goto :goto_e2

    .line 130
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shaders/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    move-object v1, v8

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/gmodvr/flat/LogBundle;->file(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;Ljava/io/File;J)J

    move-result-wide v0

    add-long/2addr v11, v0

    goto :goto_88

    .line 132
    :cond_c5
    iget-object v0, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    .line 133
    iget-object p1, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SESSION:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    if-ne p1, v0, :cond_d8

    const-wide/32 v0, 0x400000

    :goto_d6
    move-wide v5, v0

    goto :goto_dc

    :cond_d8
    const-wide/32 v0, 0x180000

    goto :goto_d6

    :goto_dc
    move-object v1, v8

    move-object v2, v7

    .line 132
    invoke-static/range {v1 .. v6}, Lcom/gmodvr/flat/LogBundle;->file(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;Ljava/io/File;J)J
    :try_end_e1
    .catchall {:try_start_c .. :try_end_e1} :catchall_1d

    goto :goto_88

    .line 137
    :cond_e2
    :goto_e2
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    return-object v7

    .line 112
    :goto_e6
    :try_start_e6
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_ee

    :catchall_ea
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ee
    throw p0
.end method

.method public static writeTail(Ljava/io/OutputStream;[BJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_3a

    move v0, v1

    .line 193
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_14

    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 194
    :cond_14
    array-length v2, p1

    if-ge v0, v2, :cond_19

    add-int/lit8 v1, v0, 0x1

    .line 196
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[... first "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, v1

    add-long/2addr p2, v2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes omitted ...]\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 198
    :cond_3a
    array-length p2, p1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

###### Class com.gmodvr.flat.LogBundle.Input (com.gmodvr.flat.LogBundle$Input)
.class final Lcom/gmodvr/flat/LogBundle$Input;
.super Ljava/lang/Object;
.source "LogBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/LogBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation


# instance fields
.field diagDir:Ljava/io/File;

.field exitInfo:Ljava/lang/String;

.field focus:Ljava/io/File;

.field logcat:[B

.field logcatError:Ljava/lang/String;

.field logcatOmitted:J

.field report:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/gmodvr/flat/LogBundle$Input;->report:Ljava/lang/String;

    return-void
.end method

###### Class com.gmodvr.flat.LogBundle.TailBuffer (com.gmodvr.flat.LogBundle$TailBuffer)
.class final Lcom/gmodvr/flat/LogBundle$TailBuffer;
.super Ljava/io/OutputStream;
.source "LogBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/LogBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TailBuffer"
.end annotation


# instance fields
.field private final ring:[B

.field private total:J


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    return-void
.end method


# virtual methods
.method public omitted()J
    .registers 5

    .line 55
    iget-wide v0, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    iget-object p0, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    array-length p0, p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public tail()[B
    .registers 8

    .line 58
    iget-wide v0, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    iget-object v2, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 59
    new-array v1, v0, [B

    .line 60
    iget-wide v2, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    array-length v5, v4

    int-to-long v5, v5

    rem-long/2addr v2, v5

    long-to-int v2, v2

    .line 61
    array-length v3, v4

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 62
    iget-object v4, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    const/4 v5, 0x0

    invoke-static {v4, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object p0, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    sub-int/2addr v0, v3

    invoke-static {p0, v5, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public total()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    return-wide v0
.end method

.method public write(I)V
    .registers 7

    .line 38
    iget-object v0, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    iget-wide v1, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    array-length p0, v0

    int-to-long v3, p0

    rem-long/2addr v1, v3

    long-to-int p0, v1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method public write([BII)V
    .registers 9

    .line 41
    iget-object v0, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    array-length v1, v0

    if-lt p3, v1, :cond_12

    .line 42
    array-length v1, v0

    sub-int v1, p3, v1

    add-int/2addr p2, v1

    .line 43
    iget-wide v1, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    array-length v3, v0

    sub-int/2addr p3, v3

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    .line 44
    array-length p3, v0

    :cond_12
    :goto_12
    if-lez p3, :cond_30

    .line 47
    iget-wide v0, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    iget-object v2, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    array-length v3, v2

    int-to-long v3, v3

    rem-long/2addr v0, v3

    long-to-int v0, v0

    .line 48
    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 49
    iget-object v2, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->ring:[B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 50
    iget-wide v2, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/gmodvr/flat/LogBundle$TailBuffer;->total:J

    goto :goto_12

    :cond_30
    return-void
.end method

###### Class com.gmodvr.flat.LogBundle$$ExternalSyntheticLambda0 (com.gmodvr.flat.LogBundle$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/LogBundle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/gmodvr/flat/DiagnosticReports$Report;

    invoke-static {p1}, Lcom/gmodvr/flat/LogBundle;->$r8$lambda$vZXY8kGY39EoRXDgjvviPpqAcV4(Lcom/gmodvr/flat/DiagnosticReports$Report;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
