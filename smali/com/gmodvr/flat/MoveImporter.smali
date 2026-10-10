###### Class com.gmodvr.flat.MoveImporter (com.gmodvr.flat.MoveImporter)
.class final Lcom/gmodvr/flat/MoveImporter;
.super Ljava/lang/Object;
.source "MoveImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/MoveImporter$Progress;,
        Lcom/gmodvr/flat/MoveImporter$MoveUnavailable;
    }
.end annotation


# static fields
.field static final COMPLETE:Ljava/lang/String; = ".sourceandroid-complete"

.field private static final JOURNAL:Ljava/lang/String; = ".plan"

.field static final LEGACY_PORTAL2_COMPLETE:Ljava/lang/String; = ".portal2android-complete"

.field private static final ORIGIN:Ljava/lang/String; = ".sourceandroid-source"

.field static final PENDING:Ljava/lang/String; = ".sourceandroid-move"

.field private static final VPK_PART:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$UsJcOJMu6E4C_sg3uEbtKEYFyaU(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/MoveImporter;->lambda$move$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 145
    const-string v0, "(?i)(.+)_(?:dir|[0-9]{3})\\.vpk"

    .line 146
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/MoveImporter;->VPK_PART:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static carryAddons(Ljava/io/File;Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const-string v0, "addons"

    const-string v1, "addons_disabled"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3e

    aget-object v3, v0, v2

    .line 180
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_1b

    goto :goto_3b

    .line 182
    :cond_1b
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    array-length v3, v4

    move v6, v1

    :goto_22
    if-ge v6, v3, :cond_3b

    aget-object v7, v4, v6

    .line 184
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_38

    invoke-static {v7, v8}, Lcom/gmodvr/flat/MoveImporter;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3e
    return-void
.end method

.method private static clearFinishedStage(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 192
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/gmodvr/flat/Storage;->delete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 193
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    return-void
.end method

.method private static core(Ljava/io/File;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GameFolder;->core(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static destination(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/gmodvr/flat/GameFolder;->destination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$move$0(Ljava/lang/String;)Z
    .registers 2

    .line 63
    const-string v0, ".plan.tmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static mergeMissing(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 156
    invoke-static {p1}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 157
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 158
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    const/4 v4, 0x1

    if-ge v3, v1, :cond_56

    aget-object v5, v0, v3

    .line 159
    sget-object v6, Lcom/gmodvr/flat/MoveImporter;->VPK_PART:Ljava/util/regex/Pattern;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 160
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_53

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_dir.vpk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 161
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 163
    :cond_56
    array-length v1, v0

    :goto_57
    if-ge v2, v1, :cond_b6

    aget-object v3, v0, v2

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_66

    goto :goto_b3

    .line 165
    :cond_66
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_89

    .line 167
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7f

    invoke-static {v3, v5}, Lcom/gmodvr/flat/MoveImporter;->rename(Ljava/io/File;Ljava/io/File;)V

    goto :goto_b3

    .line 168
    :cond_7f
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_b3

    invoke-static {v3, v5}, Lcom/gmodvr/flat/MoveImporter;->mergeMissing(Ljava/io/File;Ljava/io/File;)V

    goto :goto_b3

    .line 171
    :cond_89
    sget-object v6, Lcom/gmodvr/flat/MoveImporter;->VPK_PART:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 172
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_aa

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    goto :goto_b3

    .line 173
    :cond_aa
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_b3

    invoke-static {v3, v5}, Lcom/gmodvr/flat/MoveImporter;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_b3
    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_b6
    return-void

    .line 155
    :cond_b7
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static move(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/MoveImporter$Progress;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 29
    const-string v2, "Checking core game files\u2026"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 31
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_512

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_512

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\r"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_512

    .line 34
    new-instance v5, Ljava/io/File;

    const-string v7, ".sourceandroid-move"

    invoke-direct {v5, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v8, ".plan"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v9, ".prepared"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    new-instance v9, Ljava/io/File;

    const-string v10, ".sourceandroid-source"

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    new-instance v10, Ljava/io/File;

    const-string v11, ".done"

    invoke-direct {v10, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_5c

    invoke-static {v5}, Lcom/gmodvr/flat/MoveImporter;->clearFinishedStage(Ljava/io/File;)V

    .line 37
    :cond_5c
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_76

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-nez v10, :cond_76

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-static {v10}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 38
    :cond_76
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    const-string v13, "Game files are ready."

    const-string v14, "SourceAndroid content v1\n"

    const-string v15, ".sourceandroid-complete"

    if-nez v10, :cond_cc

    invoke-virtual {v2, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b1

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_cc

    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    invoke-static {v2}, Lcom/gmodvr/flat/GameFolder;->select(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gmodvr/flat/GameFolder;->complete(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 39
    :cond_b1
    invoke-static {v0, v4}, Lcom/gmodvr/flat/GameFolder;->check(Lcom/gmodvr/flat/GameContentProfile;Ljava/io/File;)V

    .line 40
    invoke-static {v4}, Lcom/gmodvr/flat/GameMedia;->protectExistingContent(Ljava/io/File;)Ljava/io/File;

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v14}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    const/16 v0, 0x64

    .line 43
    invoke-interface {v1, v13, v0}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    return-void

    .line 46
    :cond_cc
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_50a

    .line 52
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v3

    const-string v10, "owned"

    if-eqz v3, :cond_168

    .line 53
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v12}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v3

    .line 54
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v16, v13

    const/16 v13, 0x8

    if-lt v12, v13, :cond_142

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_108

    goto :goto_142

    :cond_108
    const/4 v12, 0x1

    .line 56
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v12, 0x2

    .line 57
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v17, v10

    .line 58
    new-instance v10, Ljava/util/ArrayList;

    move/from16 v18, v12

    const/4 v12, 0x3

    move-object/from16 v19, v11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v3, v12, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    const-string v3, "[a-f0-9-]{36}"

    invoke-virtual {v13, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13a

    move/from16 v12, v18

    goto/16 :goto_1f5

    :cond_13a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid pending move record; files were preserved."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_142
    :goto_142
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish the interrupted move by selecting its original parent folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_155

    goto :goto_15d

    :cond_155
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/io/Serializable;

    :goto_15d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_168
    move-object/from16 v17, v10

    move-object/from16 v19, v11

    move-object/from16 v16, v13

    .line 61
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a1

    .line 62
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18a

    .line 63
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v10, Lcom/gmodvr/flat/MoveImporter$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/gmodvr/flat/MoveImporter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_18a

    goto :goto_1a1

    .line 64
    :cond_18a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized pending move; files were preserved at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1a1
    :goto_1a1
    invoke-static {v2}, Lcom/gmodvr/flat/GameFolder;->select(Ljava/io/File;)Ljava/util/List;

    move-result-object v10

    .line 67
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v12

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v11

    if-nez v11, :cond_1c9

    goto :goto_1a9

    .line 69
    :cond_1c9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Select a separate game parent folder, or select the destination itself to use existing files."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1d1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    .line 72
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1f4

    new-instance v3, Ljava/io/File;

    const-string v11, ".portal2android-complete"

    invoke-direct {v3, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1f2

    goto :goto_1f4

    :cond_1f2
    const/4 v12, 0x0

    goto :goto_1f5

    :cond_1f4
    :goto_1f4
    const/4 v12, 0x1

    .line 75
    :goto_1f5
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 76
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1fe
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_238

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v11

    move-object/from16 v11, v18

    check-cast v11, Ljava/lang/String;

    move-object/from16 v18, v14

    .line 77
    invoke-static {v11}, Lcom/gmodvr/flat/MoveImporter;->destination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_221

    .line 78
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_221

    move-object/from16 v14, v18

    move-object/from16 v11, v20

    goto :goto_1fe

    :cond_221
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate or invalid game folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_238
    move-object/from16 v18, v14

    .line 80
    invoke-static {v0, v3}, Lcom/gmodvr/flat/GameFolder;->complete(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4f0

    .line 84
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ".sourceandroid-previous-"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v11

    const-string v14, " \u00b7 "

    move-object/from16 v20, v15

    const-string v15, " of "

    if-nez v11, :cond_3b9

    .line 86
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_266
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2c5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    check-cast v11, Ljava/lang/String;

    move-object/from16 v21, v9

    .line 87
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    move-object/from16 v23, v3

    invoke-static {v11}, Lcom/gmodvr/flat/MoveImporter;->destination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2b1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_295

    goto :goto_2b1

    :cond_295
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both source and staged folders exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Neither was overwritten."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2b1
    :goto_2b1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2b8

    goto :goto_2b9

    :cond_2b8
    move-object v9, v0

    :goto_2b9
    invoke-static {v9, v11}, Lcom/gmodvr/flat/MoveImporter;->core(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v9, v21

    move-object/from16 v11, v22

    move-object/from16 v3, v23

    goto :goto_266

    :cond_2c5
    move-object/from16 v23, v3

    move-object/from16 v21, v9

    .line 91
    const-string v0, "Preparing direct move\u2026"

    const/16 v3, 0xa

    invoke-interface {v1, v0, v3}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    .line 92
    invoke-static {v5}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 94
    :try_start_2d3
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v9, ".sourceandroid-move-"

    const/4 v11, 0x0

    new-array v3, v11, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v9, v3}, Ljava/nio/file/Files;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    .line 95
    new-instance v9, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2ed
    .catch Ljava/io/IOException; {:try_start_2d3 .. :try_end_2ed} :catch_39a

    .line 96
    :try_start_2ed
    invoke-static {v3, v9}, Lcom/gmodvr/flat/MoveImporter;->rename(Ljava/io/File;Ljava/io/File;)V

    invoke-static {v9, v3}, Lcom/gmodvr/flat/MoveImporter;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_2f3
    .catchall {:try_start_2ed .. :try_end_2f3} :catchall_39c

    .line 97
    :try_start_2f3
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_301
    .catch Ljava/io/IOException; {:try_start_2f3 .. :try_end_301} :catch_39a

    .line 102
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_33a

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_321

    move-object/from16 v3, v17

    goto :goto_323

    :cond_321
    const-string v3, "preserve"

    :goto_323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v10}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    :cond_33a
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v11

    :goto_33f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_394

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Moving folder "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    mul-int/lit8 v3, v3, 0x32

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    div-int/2addr v3, v13

    const/16 v13, 0xa

    add-int/2addr v3, v13

    invoke-interface {v1, v7, v3}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    .line 108
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-static {v6}, Lcom/gmodvr/flat/MoveImporter;->destination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_392

    invoke-static {v3, v7}, Lcom/gmodvr/flat/MoveImporter;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_392
    move v3, v9

    goto :goto_33f

    .line 111
    :cond_394
    const-string v0, "ready\n"

    invoke-static {v8, v0}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3be

    :catch_39a
    move-exception v0

    goto :goto_3ac

    :catchall_39c
    move-exception v0

    .line 97
    :try_start_39d
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    throw v0
    :try_end_3ac
    .catch Ljava/io/IOException; {:try_start_39d .. :try_end_3ac} :catch_39a

    .line 99
    :goto_3ac
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3b8

    new-instance v1, Lcom/gmodvr/flat/MoveImporter$MoveUnavailable;

    invoke-direct {v1, v0}, Lcom/gmodvr/flat/MoveImporter$MoveUnavailable;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 100
    :cond_3b8
    throw v0

    :cond_3b9
    move-object/from16 v23, v3

    move-object/from16 v21, v9

    const/4 v11, 0x0

    .line 115
    :goto_3be
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v11

    :goto_3c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 116
    invoke-static {v6}, Lcom/gmodvr/flat/MoveImporter;->destination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    move-object/from16 v11, v23

    invoke-direct {v13, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v17, v0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v5

    const-string v5, "Activating folder "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v23, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v3, v3, 0x19

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x3c

    invoke-interface {v1, v0, v3}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_421

    move-object v0, v8

    goto :goto_422

    :cond_421
    move-object v0, v9

    :goto_422
    invoke-static {v0, v6}, Lcom/gmodvr/flat/MoveImporter;->core(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42d

    move-object v0, v8

    goto :goto_42e

    :cond_42d
    move-object v0, v9

    :goto_42e
    invoke-static {v0}, Lcom/gmodvr/flat/GameMedia;->hide(Ljava/io/File;)V

    .line 121
    const-string v0, "garrysmod"

    move-object/from16 v3, p2

    if-eqz v3, :cond_441

    iget-object v5, v3, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_441

    const/4 v5, 0x1

    goto :goto_442

    :cond_441
    const/4 v5, 0x0

    .line 122
    :goto_442
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_47b

    if-eqz v5, :cond_47b

    const-string v6, "platform"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47b

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_47b

    .line 125
    invoke-static {v9}, Lcom/gmodvr/flat/GameMedia;->hide(Ljava/io/File;)V

    .line 126
    invoke-static {v8, v9}, Lcom/gmodvr/flat/MoveImporter;->mergeMissing(Ljava/io/File;Ljava/io/File;)V

    .line 127
    invoke-static {v11}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 128
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".unused"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v11, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/gmodvr/flat/MoveImporter;->rename(Ljava/io/File;Ljava/io/File;)V

    goto :goto_4a1

    .line 129
    :cond_47b
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4a1

    if-eqz v5, :cond_492

    .line 131
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_492

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_492

    invoke-static {v9, v8}, Lcom/gmodvr/flat/MoveImporter;->carryAddons(Ljava/io/File;Ljava/io/File;)V

    .line 132
    :cond_492
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_49e

    invoke-static {v11}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    invoke-static {v9, v13}, Lcom/gmodvr/flat/MoveImporter;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 133
    :cond_49e
    invoke-static {v8, v9}, Lcom/gmodvr/flat/MoveImporter;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_4a1
    :goto_4a1
    move-object/from16 v0, v17

    move-object/from16 v5, v22

    move/from16 v3, v23

    move-object/from16 v23, v11

    const/4 v11, 0x0

    goto/16 :goto_3c3

    :cond_4ac
    move-object/from16 v22, v5

    move-object/from16 v11, v23

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-static {v2, v0}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/io/File;

    move-object/from16 v2, v20

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v2, v18

    invoke-static {v0, v2}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    const-string v0, "Finishing \u00b7 clearing previous installation\u2026"

    const/16 v2, 0x5a

    invoke-interface {v1, v0, v2}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    if-eqz v12, :cond_4d7

    .line 139
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4d7

    invoke-static {v11}, Lcom/gmodvr/flat/Storage;->delete(Ljava/io/File;)V

    .line 140
    :cond_4d7
    new-instance v0, Ljava/io/File;

    move-object/from16 v3, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "complete\n"

    invoke-static {v0, v3}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    invoke-static {v2}, Lcom/gmodvr/flat/MoveImporter;->clearFinishedStage(Ljava/io/File;)V

    move-object/from16 v2, v16

    const/16 v0, 0x64

    .line 142
    invoke-interface {v1, v2, v0}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    return-void

    :cond_4f0
    move-object v3, v0

    .line 81
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required game folders for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_50a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Select a separate game parent folder, or select srceng itself to use existing files."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_512
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Select a local game folder with a valid name."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/MoveImporter$Progress;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, p1, v0, p2}, Lcom/gmodvr/flat/MoveImporter;->move(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/MoveImporter$Progress;)V

    return-void
.end method

.method private static rename(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 198
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/CopyOption;

    sget-object v1, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return-void
.end method

###### Class com.gmodvr.flat.MoveImporter.MoveUnavailable (com.gmodvr.flat.MoveImporter$MoveUnavailable)
.class final Lcom/gmodvr/flat/MoveImporter$MoveUnavailable;
.super Ljava/io/IOException;
.source "MoveImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/MoveImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveUnavailable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 3

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.gmodvr.flat.MoveImporter.Progress (com.gmodvr.flat.MoveImporter$Progress)
.class interface abstract Lcom/gmodvr/flat/MoveImporter$Progress;
.super Ljava/lang/Object;
.source "MoveImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/MoveImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Progress"
.end annotation


# virtual methods
.method public abstract update(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.MoveImporter$$ExternalSyntheticLambda0 (com.gmodvr.flat.MoveImporter$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/MoveImporter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/gmodvr/flat/MoveImporter;->$r8$lambda$UsJcOJMu6E4C_sg3uEbtKEYFyaU(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
