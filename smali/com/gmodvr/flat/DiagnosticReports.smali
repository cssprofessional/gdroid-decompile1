###### Class com.gmodvr.flat.DiagnosticReports (com.gmodvr.flat.DiagnosticReports)
.class final Lcom/gmodvr/flat/DiagnosticReports;
.super Ljava/lang/Object;
.source "DiagnosticReports.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/DiagnosticReports$Report;,
        Lcom/gmodvr/flat/DiagnosticReports$Kind;
    }
.end annotation


# static fields
.field static final CLEAN_EXIT:Ljava/lang/String; = "clean-exit-"

.field static final DIR:Ljava/lang/String; = "diagnostics"

.field private static final EXIT:Ljava/util/regex/Pattern;

.field static final GL_INFO:Ljava/lang/String; = "gl_info.txt"

.field private static final HANG:Ljava/util/regex/Pattern;

.field private static final JAVA:Ljava/util/regex/Pattern;

.field static final KEEP_PER_KIND:I = 0x5

.field static final KEEP_SESSIONS:I = 0x3

.field private static final NATIVE:Ljava/util/regex/Pattern;

.field static final NEWEST_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;"
        }
    .end annotation
.end field

.field static final REPORT_BYTES_CAP:J = 0x400000L

.field private static final SESSION:Ljava/util/regex/Pattern;

.field private static final SHADER:Ljava/util/regex/Pattern;

.field static final STALE_MS:J = 0x5265c00L


# direct methods
.method public static synthetic $r8$lambda$h8PmdHih9ujotSb-KMpQ3eqZAOg(Ljava/util/List;Ljava/util/List;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/DiagnosticReports;->lambda$prune$2(Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sJLmDq3idaAJNcWo3yrDDLtqqm4(Lcom/gmodvr/flat/DiagnosticReports$Report;Lcom/gmodvr/flat/DiagnosticReports$Report;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/DiagnosticReports;->lambda$static$0(Lcom/gmodvr/flat/DiagnosticReports$Report;Lcom/gmodvr/flat/DiagnosticReports$Report;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uWvNAbBhDFWYy0y0fOASTQb4G70(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/DiagnosticReports;->lambda$prune$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-string v0, "crash-(\\d{1,15})(?:-[A-Za-z0-9._-]+)?\\.txt"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports;->NATIVE:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "java-crash-(\\d{1,15})(?:-[A-Za-z0-9._]+)?\\.txt"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports;->JAVA:Ljava/util/regex/Pattern;

    .line 55
    const-string v0, "hang-(\\d{1,15})(?:-[A-Za-z0-9._-]+)?\\.txt"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports;->HANG:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "exit-(\\d{1,15})(?:-[A-Za-z0-9_]+)?(\\.txt|\\.tombstone\\.pb)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports;->EXIT:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "session-(\\d{1,15})\\.log"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports;->SESSION:Ljava/util/regex/Pattern;

    .line 58
    const-string v0, "shader-fail-(\\d{1,6})\\.txt"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports;->SHADER:Ljava/util/regex/Pattern;

    .line 122
    new-instance v0, Lcom/gmodvr/flat/DiagnosticReports$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gmodvr/flat/DiagnosticReports$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports;->NEWEST_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bannerReport(Ljava/util/List;J)Lcom/gmodvr/flat/DiagnosticReports$Report;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;J)",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;"
        }
    .end annotation

    .line 139
    invoke-static {p0}, Lcom/gmodvr/flat/DiagnosticReports;->newestCrash(Ljava/util/List;)Lcom/gmodvr/flat/DiagnosticReports$Report;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 140
    iget-wide v0, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->epochMs:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public static cleanExitMarkers(Ljava/io/File;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    .line 236
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    :goto_d
    if-nez p0, :cond_10

    return-object v0

    .line 238
    :cond_10
    array-length v1, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_5c

    aget-object v3, p0, v2

    .line 239
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 240
    const-string v5, "clean-exit-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_59

    :cond_23
    const/16 v5, 0xb

    .line 242
    :try_start_25
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 243
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_31} :catch_59

    .line 245
    :try_start_31
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4e

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4e} :catch_4e

    .line 248
    :catch_4e
    :cond_4e
    :try_start_4e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_59} :catch_59

    :catch_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_5c
    return-object v0
.end method

.method private static delete(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/DiagnosticReports$Report;

    iget-object v1, v0, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1e
    return-void
.end method

.method private static synthetic lambda$prune$1(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 182
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$prune$2(Ljava/util/List;Ljava/util/List;)I
    .registers 4

    .line 187
    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports;->NEWEST_FIRST:Ljava/util/Comparator;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/DiagnosticReports$Report;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/DiagnosticReports$Report;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/gmodvr/flat/DiagnosticReports$Report;Lcom/gmodvr/flat/DiagnosticReports$Report;)I
    .registers 6

    .line 123
    iget-wide v0, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->epochMs:J

    iget-wide v2, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->epochMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1b

    .line 124
    :cond_b
    iget-object p1, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_1b
    return v0
.end method

.method public static list(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    .line 110
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    :goto_d
    if-eqz p0, :cond_28

    .line 112
    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_25

    .line 114
    :cond_1c
    invoke-static {v3}, Lcom/gmodvr/flat/DiagnosticReports;->parse(Ljava/io/File;)Lcom/gmodvr/flat/DiagnosticReports$Report;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 115
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 118
    :cond_28
    sget-object p0, Lcom/gmodvr/flat/DiagnosticReports;->NEWEST_FIRST:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static newest(Ljava/util/List;Lcom/gmodvr/flat/DiagnosticReports$Kind;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;",
            "Lcom/gmodvr/flat/DiagnosticReports$Kind;",
            "I)",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    sget-object p0, Lcom/gmodvr/flat/DiagnosticReports;->NEWEST_FIRST:Ljava/util/Comparator;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 149
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/DiagnosticReports$Report;

    .line 150
    iget-object v3, v2, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    if-eq v3, p1, :cond_29

    goto :goto_18

    .line 151
    :cond_29
    iget-object v3, v2, Lcom/gmodvr/flat/DiagnosticReports$Report;->group:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p2, :cond_38

    goto :goto_18

    .line 153
    :cond_38
    iget-object v3, v2, Lcom/gmodvr/flat/DiagnosticReports$Report;->group:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_41
    return-object v1
.end method

.method public static newestCrash(Ljava/util/List;)Lcom/gmodvr/flat/DiagnosticReports$Report;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;)",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;"
        }
    .end annotation

    .line 130
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/DiagnosticReports$Report;

    .line 131
    iget-object v2, v1, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    iget-boolean v2, v2, Lcom/gmodvr/flat/DiagnosticReports$Kind;->crash:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/gmodvr/flat/DiagnosticReports$Report;->attachment:Z

    if-eqz v2, :cond_1c

    goto :goto_5

    :cond_1c
    if-eqz v0, :cond_26

    .line 132
    sget-object v2, Lcom/gmodvr/flat/DiagnosticReports;->NEWEST_FIRST:Ljava/util/Comparator;

    invoke-interface {v2, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    :cond_26
    move-object v0, v1

    goto :goto_5

    :cond_28
    return-object v0
.end method

.method public static parse(Ljava/io/File;)Lcom/gmodvr/flat/DiagnosticReports$Report;
    .registers 14

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 90
    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports;->JAVA:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    .line 91
    new-instance v7, Lcom/gmodvr/flat/DiagnosticReports$Report;

    sget-object v3, Lcom/gmodvr/flat/DiagnosticReports$Kind;->JAVA_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gmodvr/flat/DiagnosticReports;->toMillis(J)J

    move-result-wide v8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v3

    move-wide v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/DiagnosticReports$Report;-><init>(Ljava/io/File;Lcom/gmodvr/flat/DiagnosticReports$Kind;JLjava/lang/String;Z)V

    return-object v7

    .line 92
    :cond_2a
    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports;->NATIVE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 93
    new-instance v7, Lcom/gmodvr/flat/DiagnosticReports$Report;

    sget-object v3, Lcom/gmodvr/flat/DiagnosticReports$Kind;->NATIVE_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gmodvr/flat/DiagnosticReports;->toMillis(J)J

    move-result-wide v8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v3

    move-wide v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/DiagnosticReports$Report;-><init>(Ljava/io/File;Lcom/gmodvr/flat/DiagnosticReports$Kind;JLjava/lang/String;Z)V

    return-object v7

    .line 94
    :cond_4f
    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports;->HANG:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 95
    new-instance v7, Lcom/gmodvr/flat/DiagnosticReports$Report;

    sget-object v3, Lcom/gmodvr/flat/DiagnosticReports$Kind;->HANG:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gmodvr/flat/DiagnosticReports;->toMillis(J)J

    move-result-wide v8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v3

    move-wide v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/DiagnosticReports$Report;-><init>(Ljava/io/File;Lcom/gmodvr/flat/DiagnosticReports$Kind;JLjava/lang/String;Z)V

    return-object v7

    .line 96
    :cond_74
    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports;->EXIT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-virtual {v5, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 98
    new-instance v1, Lcom/gmodvr/flat/DiagnosticReports$Report;

    sget-object v8, Lcom/gmodvr/flat/DiagnosticReports$Kind;->EXIT:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/gmodvr/flat/DiagnosticReports;->toMillis(J)J

    move-result-wide v9

    const-string v4, ".txt"

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v12, v0, 0x1

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/gmodvr/flat/DiagnosticReports$Report;-><init>(Ljava/io/File;Lcom/gmodvr/flat/DiagnosticReports$Kind;JLjava/lang/String;Z)V

    return-object v1

    .line 100
    :cond_b5
    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports;->SESSION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 101
    new-instance v7, Lcom/gmodvr/flat/DiagnosticReports$Report;

    sget-object v3, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SESSION:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gmodvr/flat/DiagnosticReports;->toMillis(J)J

    move-result-wide v8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v3

    move-wide v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/DiagnosticReports$Report;-><init>(Ljava/io/File;Lcom/gmodvr/flat/DiagnosticReports$Kind;JLjava/lang/String;Z)V

    return-object v7

    .line 102
    :cond_da
    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports;->SHADER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 103
    new-instance v7, Lcom/gmodvr/flat/DiagnosticReports$Report;

    sget-object v2, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SHADER_FAIL:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/DiagnosticReports$Report;-><init>(Ljava/io/File;Lcom/gmodvr/flat/DiagnosticReports$Kind;JLjava/lang/String;Z)V

    return-object v7

    :cond_f5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static prune(Ljava/io/File;IJIJ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "IJIJ)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-static {p0}, Lcom/gmodvr/flat/DiagnosticReports;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/DiagnosticReports$Report;

    .line 181
    iget-object v5, v4, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    iget-boolean v6, v5, Lcom/gmodvr/flat/DiagnosticReports$Kind;->crash:Z

    if-nez v6, :cond_29

    sget-object v6, Lcom/gmodvr/flat/DiagnosticReports$Kind;->HANG:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    if-eq v5, v6, :cond_29

    goto :goto_12

    .line 182
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/gmodvr/flat/DiagnosticReports$Report;->group:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/gmodvr/flat/DiagnosticReports$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/gmodvr/flat/DiagnosticReports$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 184
    :cond_50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    new-instance v2, Lcom/gmodvr/flat/DiagnosticReports$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/gmodvr/flat/DiagnosticReports$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 188
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 189
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gmodvr/flat/DiagnosticReports$Report;

    iget-object v7, v7, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    .line 190
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, p1, :cond_9a

    .line 191
    invoke-static {v5, v0}, Lcom/gmodvr/flat/DiagnosticReports;->delete(Ljava/util/List;Ljava/util/List;)V

    goto :goto_71

    :cond_9a
    add-int/lit8 v6, v6, 0x1

    .line 192
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 196
    :cond_a7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v4, 0x0

    :goto_ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/gmodvr/flat/DiagnosticReports;->size(Ljava/util/List;)J

    move-result-wide v7

    add-long/2addr v4, v7

    goto :goto_ad

    .line 197
    :cond_bf
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    :goto_c5
    if-lez p1, :cond_e2

    cmp-long v7, v4, p2

    if-lez v7, :cond_e2

    .line 198
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/gmodvr/flat/DiagnosticReports;->size(Ljava/util/List;)J

    move-result-wide v7

    sub-long/2addr v4, v7

    .line 199
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7, v0}, Lcom/gmodvr/flat/DiagnosticReports;->delete(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_c5

    .line 203
    :cond_e2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v6

    :cond_e7
    :goto_e7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmodvr/flat/DiagnosticReports$Report;

    .line 204
    iget-object v1, p3, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v3, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SESSION:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    if-eq v1, v3, :cond_fa

    goto :goto_e7

    :cond_fa
    add-int/lit8 p2, p2, 0x1

    if-le p2, p4, :cond_e7

    .line 205
    iget-object v1, p3, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_e7

    iget-object p3, p3, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    :cond_10c
    if-nez p0, :cond_110

    const/4 p0, 0x0

    goto :goto_114

    .line 208
    :cond_110
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    :goto_114
    if-eqz p0, :cond_14c

    .line 210
    array-length p1, p0

    move p2, v6

    :goto_118
    if-ge p2, p1, :cond_14c

    aget-object p3, p0, p2

    .line 211
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    .line 212
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v3, p5, v3

    const-wide/32 v7, 0x5265c00

    cmp-long v1, v3, v7

    if-lez v1, :cond_12f

    move v1, v2

    goto :goto_130

    :cond_12f
    move v1, v6

    .line 216
    :goto_130
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_149

    if-eqz v1, :cond_149

    const-string v1, "clean-exit-"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_149

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p4

    if-eqz p4, :cond_149

    .line 217
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_149
    add-int/lit8 p2, p2, 0x1

    goto :goto_118

    :cond_14c
    return-object v0
.end method

.method public static sameGroup(Ljava/util/List;Lcom/gmodvr/flat/DiagnosticReports$Report;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/DiagnosticReports$Report;

    iget-object v2, v1, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    iget-object v3, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    if-ne v2, v3, :cond_9

    iget-object v2, v1, Lcom/gmodvr/flat/DiagnosticReports$Report;->group:Ljava/lang/String;

    iget-object v3, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_29
    return-object v0
.end method

.method private static size(Ljava/util/List;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/DiagnosticReports$Report;",
            ">;)J"
        }
    .end annotation

    .line 225
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/DiagnosticReports$Report;

    iget-object v2, v2, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_6

    :cond_1a
    return-wide v0
.end method

.method public static toMillis(J)J
    .registers 4

    .line 0
    const-wide v0, 0x174876e800L

    cmp-long v0, p0, v0

    if-gez v0, :cond_c

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    :cond_c
    return-wide p0
.end method

###### Class com.gmodvr.flat.DiagnosticReports.Kind (com.gmodvr.flat.DiagnosticReports$Kind)
.class final enum Lcom/gmodvr/flat/DiagnosticReports$Kind;
.super Ljava/lang/Enum;
.source "DiagnosticReports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/DiagnosticReports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/DiagnosticReports$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/DiagnosticReports$Kind;

.field public static final enum EXIT:Lcom/gmodvr/flat/DiagnosticReports$Kind;

.field public static final enum HANG:Lcom/gmodvr/flat/DiagnosticReports$Kind;

.field public static final enum JAVA_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

.field public static final enum NATIVE_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

.field public static final enum SESSION:Lcom/gmodvr/flat/DiagnosticReports$Kind;

.field public static final enum SHADER_FAIL:Lcom/gmodvr/flat/DiagnosticReports$Kind;


# instance fields
.field final crash:Z

.field final title:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/DiagnosticReports$Kind;
    .registers 6

    .line 36
    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->NATIVE_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v1, Lcom/gmodvr/flat/DiagnosticReports$Kind;->JAVA_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v2, Lcom/gmodvr/flat/DiagnosticReports$Kind;->EXIT:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v3, Lcom/gmodvr/flat/DiagnosticReports$Kind;->HANG:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v4, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SESSION:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    sget-object v5, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SHADER_FAIL:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    filled-new-array/range {v0 .. v5}, [Lcom/gmodvr/flat/DiagnosticReports$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 37
    new-instance v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;

    const-string v1, "NATIVE_CRASH"

    const/4 v2, 0x0

    const-string v3, "Native crash"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gmodvr/flat/DiagnosticReports$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->NATIVE_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    .line 38
    new-instance v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;

    const-string v1, "JAVA_CRASH"

    const-string v3, "Java crash"

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/gmodvr/flat/DiagnosticReports$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->JAVA_CRASH:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    .line 39
    new-instance v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;

    const/4 v1, 0x2

    const-string v3, "Abnormal exit"

    const-string v5, "EXIT"

    invoke-direct {v0, v5, v1, v3, v4}, Lcom/gmodvr/flat/DiagnosticReports$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->EXIT:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    .line 40
    new-instance v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;

    const/4 v1, 0x3

    const-string v3, "Frame stall"

    const-string v4, "HANG"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/gmodvr/flat/DiagnosticReports$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->HANG:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    .line 41
    new-instance v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;

    const/4 v1, 0x4

    const-string v3, "Session log"

    const-string v4, "SESSION"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/gmodvr/flat/DiagnosticReports$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SESSION:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    .line 42
    new-instance v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;

    const/4 v1, 0x5

    const-string v3, "Shader failure"

    const-string v4, "SHADER_FAIL"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/gmodvr/flat/DiagnosticReports$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->SHADER_FAIL:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    .line 36
    invoke-static {}, Lcom/gmodvr/flat/DiagnosticReports$Kind;->$values()[Lcom/gmodvr/flat/DiagnosticReports$Kind;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->$VALUES:[Lcom/gmodvr/flat/DiagnosticReports$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->title:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->crash:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/DiagnosticReports$Kind;
    .registers 2

    .line 36
    const-class v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/DiagnosticReports$Kind;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/DiagnosticReports$Kind;
    .registers 1

    .line 36
    sget-object v0, Lcom/gmodvr/flat/DiagnosticReports$Kind;->$VALUES:[Lcom/gmodvr/flat/DiagnosticReports$Kind;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/DiagnosticReports$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/DiagnosticReports$Kind;

    return-object v0
.end method

###### Class com.gmodvr.flat.DiagnosticReports.Report (com.gmodvr.flat.DiagnosticReports$Report)
.class final Lcom/gmodvr/flat/DiagnosticReports$Report;
.super Ljava/lang/Object;
.source "DiagnosticReports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/DiagnosticReports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation


# instance fields
.field final attachment:Z

.field final epochMs:J

.field final file:Ljava/io/File;

.field final group:Ljava/lang/String;

.field final kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/gmodvr/flat/DiagnosticReports$Kind;JLjava/lang/String;Z)V
    .registers 7

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    .line 70
    iput-object p2, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    .line 71
    iput-wide p3, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->epochMs:J

    .line 72
    iput-object p5, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->group:Ljava/lang/String;

    .line 73
    iput-boolean p6, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->attachment:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.DiagnosticReports$$ExternalSyntheticLambda0 (com.gmodvr.flat.DiagnosticReports$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/DiagnosticReports$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/gmodvr/flat/DiagnosticReports$Report;

    check-cast p2, Lcom/gmodvr/flat/DiagnosticReports$Report;

    invoke-static {p1, p2}, Lcom/gmodvr/flat/DiagnosticReports;->$r8$lambda$sJLmDq3idaAJNcWo3yrDDLtqqm4(Lcom/gmodvr/flat/DiagnosticReports$Report;Lcom/gmodvr/flat/DiagnosticReports$Report;)I

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.DiagnosticReports$$ExternalSyntheticLambda1 (com.gmodvr.flat.DiagnosticReports$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/DiagnosticReports$$ExternalSyntheticLambda1;
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
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/gmodvr/flat/DiagnosticReports;->$r8$lambda$uWvNAbBhDFWYy0y0fOASTQb4G70(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.DiagnosticReports$$ExternalSyntheticLambda2 (com.gmodvr.flat.DiagnosticReports$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/DiagnosticReports$$ExternalSyntheticLambda2;
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
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/gmodvr/flat/DiagnosticReports;->$r8$lambda$h8PmdHih9ujotSb-KMpQ3eqZAOg(Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0
.end method
