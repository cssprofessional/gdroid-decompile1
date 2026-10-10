###### Class com.gmodvr.flat.ModManager (com.gmodvr.flat.ModManager)
.class final Lcom/gmodvr/flat/ModManager;
.super Ljava/lang/Object;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/ModManager$GameSection;,
        Lcom/gmodvr/flat/ModManager$Accumulator;,
        Lcom/gmodvr/flat/ModManager$ModEntry;,
        Lcom/gmodvr/flat/ModManager$Candidate;,
        Lcom/gmodvr/flat/ModManager$Kind;,
        Lcom/gmodvr/flat/ModManager$Member;,
        Lcom/gmodvr/flat/ModManager$MarkerChange;,
        Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;,
        Lcom/gmodvr/flat/ModManager$Move;
    }
.end annotation


# static fields
.field private static final DIRECTORY_VPK_SUFFIX:Ljava/lang/String; = "_dir.vpk"

.field static final DISABLED_MARKER:Ljava/lang/String; = ".sourceandroid-disabled"

.field static final DISABLED_PREFIX:Ljava/lang/String; = ".sourceandroid-disabled-"

.field private static final NUMBERED_VPK:Ljava/util/regex/Pattern;

.field private static final UNMOUNTABLE_CONTENT_DIRECTORIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final VPK_HEADER_MARKER:I = 0x55aa1234


# direct methods
.method public static synthetic $r8$lambda$clXV_ei5smUdPe4cxfvU0W9LHUA(ZLcom/gmodvr/flat/ModManager$Move;Lcom/gmodvr/flat/ModManager$Move;)I
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/ModManager;->lambda$setEnabled$1(ZLcom/gmodvr/flat/ModManager$Move;Lcom/gmodvr/flat/ModManager$Move;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pjTc4a7WOaLhJ3GB_5svqfmNqZQ(Lcom/gmodvr/flat/ModManager$ModEntry;Lcom/gmodvr/flat/ModManager$ModEntry;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/ModManager;->lambda$scanRoots$0(Lcom/gmodvr/flat/ModManager$ModEntry;Lcom/gmodvr/flat/ModManager$ModEntry;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smvalidateMarkerChange(Ljava/nio/file/Path;Z)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/ModManager;->validateMarkerChange(Ljava/nio/file/Path;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 31
    const-string v0, "^(.+)_([0-9]+)\\.vpk$"

    const/4 v1, 0x2

    .line 32
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/ModManager;->NUMBERED_VPK:Ljava/util/regex/Pattern;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 39
    const-string v5, "sound"

    const-string v6, "models"

    const-string v1, "materials"

    const-string v2, "maps"

    const-string v3, "resource"

    const-string v4, "scripts"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/ModManager;->UNMOUNTABLE_CONTENT_DIRECTORIES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/ModManager$Kind;Lcom/gmodvr/flat/ModManager$Candidate;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gmodvr/flat/ModManager$Accumulator;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gmodvr/flat/ModManager$Kind;",
            "Lcom/gmodvr/flat/ModManager$Candidate;",
            "Z)V"
        }
    .end annotation

    .line 174
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/ModManager$Accumulator;

    if-nez v0, :cond_10

    .line 176
    new-instance v0, Lcom/gmodvr/flat/ModManager$Accumulator;

    invoke-direct {v0, p2, p3}, Lcom/gmodvr/flat/ModManager$Accumulator;-><init>(Ljava/lang/String;Lcom/gmodvr/flat/ModManager$Kind;)V

    .line 177
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_10
    invoke-virtual {v0, p4, p5}, Lcom/gmodvr/flat/ModManager$Accumulator;->add(Lcom/gmodvr/flat/ModManager$Candidate;Z)V

    return-void
.end method

.method private static addMountedRoot(Ljava/util/List;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-void

    .line 76
    :cond_37
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static candidate(Ljava/io/File;)Lcom/gmodvr/flat/ModManager$Candidate;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    .line 136
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/CustomContentName;->parse(Ljava/lang/String;)Lcom/gmodvr/flat/CustomContentName$Parsed;

    move-result-object v0

    if-nez v0, :cond_17

    return-object v1

    .line 139
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 140
    new-instance v2, Ljava/io/File;

    const-string v3, "gameinfo.txt"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2b

    return-object v1

    .line 141
    :cond_2b
    sget-object v2, Lcom/gmodvr/flat/ModManager;->UNMOUNTABLE_CONTENT_DIRECTORIES:Ljava/util/Set;

    iget-object v3, v0, Lcom/gmodvr/flat/CustomContentName$Parsed;->canonicalName:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    return-object v1

    .line 142
    :cond_3c
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/gmodvr/flat/ModManager;->isRecursivelyEmpty(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_47

    return-object v1

    .line 143
    :cond_47
    new-instance v1, Lcom/gmodvr/flat/ModManager$Candidate;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    iget-object v6, v0, Lcom/gmodvr/flat/CustomContentName$Parsed;->canonicalName:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/gmodvr/flat/CustomContentName$Parsed;->enabled:Z

    if-eqz v0, :cond_6c

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v2, ".sourceandroid-disabled"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v2}, [Ljava/nio/file/LinkOption;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_6c

    const/4 v0, 0x1

    :goto_6a
    move v7, v0

    goto :goto_6e

    :cond_6c
    const/4 v0, 0x0

    goto :goto_6a

    :goto_6e
    const/4 v8, 0x1

    move-object v3, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/gmodvr/flat/ModManager$Candidate;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v1

    .line 146
    :cond_75
    iget-object v2, v0, Lcom/gmodvr/flat/CustomContentName$Parsed;->canonicalName:Ljava/lang/String;

    const-string v3, ".vpk"

    invoke-static {v2, v3}, Lcom/gmodvr/flat/ModManager;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_86

    invoke-static {p0}, Lcom/gmodvr/flat/ModManager;->hasVpkHeader(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_86

    return-object v1

    .line 149
    :cond_86
    new-instance v1, Lcom/gmodvr/flat/ModManager$Candidate;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    iget-object v6, v0, Lcom/gmodvr/flat/CustomContentName$Parsed;->canonicalName:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/gmodvr/flat/CustomContentName$Parsed;->enabled:Z

    const/4 v8, 0x0

    move-object v3, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/gmodvr/flat/ModManager$Candidate;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v1
.end method

.method private static collectEmptyDirectories(Ljava/nio/file/Path;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 313
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    .line 315
    :try_start_16
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-static {v1, p1}, Lcom/gmodvr/flat/ModManager;->collectEmptyDirectories(Ljava/nio/file/Path;Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_2a

    goto :goto_1a

    :catchall_2a
    move-exception p1

    goto :goto_30

    .line 316
    :cond_2c
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void

    :goto_30
    if-eqz p0, :cond_3a

    .line 314
    :try_start_32
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw p1

    .line 311
    :cond_3b
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refusing to remove non-empty custom target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static deleteEmptyDirectoryTree(Ljava/nio/file/Path;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 323
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .line 324
    :try_start_13
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    invoke-static {v2}, Lcom/gmodvr/flat/ModManager;->deleteEmptyDirectoryTree(Ljava/nio/file/Path;)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_27

    goto :goto_17

    :catchall_27
    move-exception p0

    goto :goto_30

    .line 325
    :cond_29
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 326
    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    return-void

    :goto_30
    if-eqz v0, :cond_3a

    .line 323
    :try_start_32
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw p0

    .line 321
    :cond_3b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refusing to remove non-empty custom target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 290
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v4, v0, v1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v3, 0x1

    move-object v2, p0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static hasVpkHeader(Ljava/io/File;)Z
    .registers 6

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x4

    .line 154
    new-array v2, v0, [B

    .line 155
    :try_start_b
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array v3, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_59

    move v3, v1

    :goto_16
    if-ge v3, v0, :cond_32

    rsub-int/lit8 v4, v3, 0x4

    .line 158
    :try_start_1a
    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_26

    if-gez v4, :cond_24

    .line 162
    :try_start_20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_59

    return v1

    :cond_24
    add-int/2addr v3, v4

    goto :goto_16

    :catchall_26
    move-exception v0

    if-eqz p0, :cond_31

    .line 155
    :try_start_29
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p0

    :try_start_2e
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw v0

    :cond_32
    if-eqz p0, :cond_37

    .line 162
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_37} :catch_59

    .line 165
    :cond_37
    aget-byte p0, v2, v1

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x1

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr p0, v3

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr p0, v3

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr p0, v2

    const v2, 0x55aa1234

    if-ne p0, v2, :cond_59

    move v1, v0

    :catch_59
    :cond_59
    return v1
.end method

.method private static isRecursivelyEmpty(Ljava/nio/file/Path;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_40

    new-array v0, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_40

    .line 295
    :cond_10
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    .line 296
    :try_start_14
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 297
    invoke-static {v2}, Lcom/gmodvr/flat/ModManager;->isRecursivelyEmpty(Ljava/nio/file/Path;)Z

    move-result v2
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_2e

    if-nez v2, :cond_18

    .line 299
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return v1

    :catchall_2e
    move-exception v0

    goto :goto_35

    :cond_30
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    const/4 p0, 0x1

    return p0

    :goto_35
    if-eqz p0, :cond_3f

    .line 295
    :try_start_37
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3f
    :goto_3f
    throw v0

    :cond_40
    :goto_40
    return v1
.end method

.method private static synthetic lambda$scanRoots$0(Lcom/gmodvr/flat/ModManager$ModEntry;Lcom/gmodvr/flat/ModManager$ModEntry;)I
    .registers 5

    .line 86
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 88
    :cond_d
    iget-object p0, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setEnabled$1(ZLcom/gmodvr/flat/ModManager$Move;Lcom/gmodvr/flat/ModManager$Move;)I
    .registers 5

    .line 225
    iget-boolean v0, p1, Lcom/gmodvr/flat/ModManager$Move;->descriptor:Z

    iget-boolean v1, p2, Lcom/gmodvr/flat/ModManager$Move;->descriptor:Z

    if-eq v0, v1, :cond_11

    const/4 p1, -0x1

    const/4 p2, 0x1

    if-eqz p0, :cond_e

    if-eqz v0, :cond_10

    :cond_c
    move p1, p2

    goto :goto_10

    :cond_e
    if-eqz v0, :cond_c

    :cond_10
    :goto_10
    return p1

    .line 228
    :cond_11
    sget-object p0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object p1, p1, Lcom/gmodvr/flat/ModManager$Move;->source:Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/gmodvr/flat/ModManager$Move;->source:Ljava/nio/file/Path;

    invoke-interface {p2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static scan(Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameContentProfile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$GameSection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_6f

    if-eqz p2, :cond_67

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GameContentProfile;

    if-eqz v2, :cond_12

    .line 57
    iget-object v3, v2, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_12

    .line 58
    :cond_29
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "custom"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4d

    .line 61
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    iget-object v8, v2, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lcom/gmodvr/flat/ModManager;->addMountedRoot(Ljava/util/List;Ljava/io/File;)V

    .line 63
    :cond_4d
    invoke-static {v4, v3}, Lcom/gmodvr/flat/ModManager;->addMountedRoot(Ljava/util/List;Ljava/io/File;)V

    .line 64
    new-instance v3, Lcom/gmodvr/flat/ModManager$GameSection;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Lcom/gmodvr/flat/ModManager;->scanRoots(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v2, v5, v4}, Lcom/gmodvr/flat/ModManager$GameSection;-><init>(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 66
    :cond_62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 52
    :cond_67
    new-instance p0, Ljava/io/IOException;

    const-string p1, "game catalog is unavailable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_6f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "shared content root is unavailable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scan(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameContentProfile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$GameSection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0, p1}, Lcom/gmodvr/flat/ModManager;->scan(Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static scanRoot(Ljava/io/File;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gmodvr/flat/ModManager$Accumulator;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 95
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 101
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_38

    aget-object v4, v0, v3

    .line 104
    invoke-static {v4}, Lcom/gmodvr/flat/ModManager;->candidate(Ljava/io/File;)Lcom/gmodvr/flat/ModManager$Candidate;

    move-result-object v4

    if-nez v4, :cond_2a

    goto :goto_35

    .line 106
    :cond_2a
    iget-boolean v5, v4, Lcom/gmodvr/flat/ModManager$Candidate;->directory:Z

    if-eqz v5, :cond_32

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 107
    :cond_32
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 110
    :cond_38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/gmodvr/flat/ModManager$Candidate;

    .line 111
    iget-object v0, v6, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    sget-object v5, Lcom/gmodvr/flat/ModManager$Kind;->FOLDER:Lcom/gmodvr/flat/ModManager$Kind;

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/gmodvr/flat/ModManager;->add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/ModManager$Kind;Lcom/gmodvr/flat/ModManager$Candidate;Z)V

    goto :goto_3c

    .line 115
    :cond_5b
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_64
    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_dir.vpk"

    if-eqz v2, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/ModManager$Candidate;

    .line 117
    iget-object v4, v2, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/gmodvr/flat/ModManager;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 118
    iget-object v3, v2, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 121
    :cond_86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/gmodvr/flat/ModManager$Candidate;

    .line 122
    iget-object v1, v8, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    .line 123
    sget-object v2, Lcom/gmodvr/flat/ModManager;->NUMBERED_VPK:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/ModManager$Candidate;

    if-eqz v2, :cond_c9

    .line 127
    iget-object v1, v2, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    :cond_c9
    move-object v6, v1

    .line 129
    iget-object v1, v8, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/gmodvr/flat/ModManager;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 130
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/gmodvr/flat/ModManager$Kind;->VPK:Lcom/gmodvr/flat/ModManager$Kind;

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/gmodvr/flat/ModManager;->add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/ModManager$Kind;Lcom/gmodvr/flat/ModManager$Candidate;Z)V

    goto :goto_8a

    :cond_dd
    return-void

    .line 99
    :cond_de
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not inspect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_f5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom path is not a directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static scanRoots(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$ModEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1, v0}, Lcom/gmodvr/flat/ModManager;->scanRoot(Ljava/io/File;Ljava/util/Map;)V

    goto :goto_9

    .line 83
    :cond_19
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/ModManager$Accumulator;

    invoke-virtual {v1}, Lcom/gmodvr/flat/ModManager$Accumulator;->finish()Lcom/gmodvr/flat/ModManager$ModEntry;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 85
    :cond_3a
    new-instance v0, Lcom/gmodvr/flat/ModManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gmodvr/flat/ModManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 90
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setEnabled(Lcom/gmodvr/flat/ModManager$ModEntry;Z)Lcom/gmodvr/flat/ModManager$ModEntry;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2ff

    .line 184
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->conflict:Z

    if-nez v0, :cond_2e6

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v3, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->members:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, ".sourceandroid-disabled-"

    const/4 v7, 0x0

    if-eqz v4, :cond_1d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/ModManager$Member;

    .line 192
    iget-boolean v8, v4, Lcom/gmodvr/flat/ModManager$Member;->enabled:Z

    if-ne v8, p1, :cond_30

    goto :goto_1b

    .line 193
    :cond_30
    iget-object v8, v4, Lcom/gmodvr/flat/ModManager$Member;->customRoot:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v8

    .line 194
    new-array v9, v7, [Ljava/nio/file/LinkOption;

    invoke-static {v8, v9}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-eqz v9, :cond_1b9

    .line 195
    iget-object v9, v4, Lcom/gmodvr/flat/ModManager$Member;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v9

    .line 196
    invoke-interface {v9}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a2

    .line 197
    invoke-static {v9}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v10

    const-string v11, "mod changed while the menu was open"

    if-nez v10, :cond_19c

    new-array v10, v7, [Ljava/nio/file/LinkOption;

    invoke-static {v9, v10}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    if-eqz v10, :cond_19c

    .line 198
    iget-boolean v10, v4, Lcom/gmodvr/flat/ModManager$Member;->directory:Z

    if-eqz v10, :cond_81

    new-array v10, v7, [Ljava/nio/file/LinkOption;

    invoke-static {v9, v10}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    if-eqz v10, :cond_7b

    goto :goto_81

    :cond_7b
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_81
    :goto_81
    iget-boolean v10, v4, Lcom/gmodvr/flat/ModManager$Member;->directory:Z

    const-string v12, "a file already exists at "

    const-string v13, ".sourceandroid-disabled"

    if-eqz v10, :cond_e9

    invoke-interface {v9}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v10}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e9

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/gmodvr/flat/ModManager$Member;->canonicalName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 201
    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v5}, [Ljava/nio/file/LinkOption;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_d8

    invoke-static {v4}, Lcom/gmodvr/flat/ModManager;->isRecursivelyEmpty(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_bf

    goto :goto_d8

    .line 202
    :cond_bf
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_d8
    :goto_d8
    invoke-interface {v9, v13}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 205
    invoke-static {v4, p1}, Lcom/gmodvr/flat/ModManager;->validateMarkerChange(Ljava/nio/file/Path;Z)V

    .line 206
    new-instance v5, Lcom/gmodvr/flat/ModManager$MarkerChange;

    invoke-direct {v5, v4, p1}, Lcom/gmodvr/flat/ModManager$MarkerChange;-><init>(Ljava/nio/file/Path;Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_e9
    if-eqz p1, :cond_ee

    .line 209
    iget-object v6, v4, Lcom/gmodvr/flat/ModManager$Member;->canonicalName:Ljava/lang/String;

    goto :goto_ff

    :cond_ee
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/gmodvr/flat/ModManager$Member;->canonicalName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 210
    :goto_ff
    invoke-interface {v8, v6}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v6

    .line 211
    invoke-interface {v6}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_183

    .line 212
    new-array v8, v7, [Ljava/nio/file/LinkOption;

    invoke-static {v9, v8}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    if-eqz v8, :cond_17d

    .line 213
    new-array v7, v7, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v7

    if-eqz v7, :cond_148

    .line 214
    invoke-static {v6}, Lcom/gmodvr/flat/ModManager;->isRecursivelyEmpty(Ljava/nio/file/Path;)Z

    move-result v7

    if-eqz v7, :cond_12f

    invoke-static {v6}, Lcom/gmodvr/flat/ModManager;->snapshotEmptyDirectoryTree(Ljava/nio/file/Path;)Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_148

    .line 215
    :cond_12f
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_148
    :goto_148
    new-instance v7, Lcom/gmodvr/flat/ModManager$Move;

    iget-boolean v8, v4, Lcom/gmodvr/flat/ModManager$Member;->descriptor:Z

    invoke-direct {v7, v9, v6, v8}, Lcom/gmodvr/flat/ModManager$Move;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-boolean v4, v4, Lcom/gmodvr/flat/ModManager$Member;->directory:Z

    if-eqz v4, :cond_1b

    if-eqz p1, :cond_1b

    invoke-interface {v9, v13}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    sget-object v7, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v7}, [Ljava/nio/file/LinkOption;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 219
    invoke-interface {v9, v13}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/gmodvr/flat/ModManager;->validateMarkerChange(Ljava/nio/file/Path;Z)V

    .line 220
    new-instance v4, Lcom/gmodvr/flat/ModManager$MarkerChange;

    invoke-interface {v6, v13}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Lcom/gmodvr/flat/ModManager$MarkerChange;-><init>(Ljava/nio/file/Path;Z)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 212
    :cond_17d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_183
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid mod name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/gmodvr/flat/ModManager$Member;->canonicalName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_19c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_1a2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refusing to move a mod outside "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_1b9
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "custom directory is unavailable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_1d0
    new-instance v3, Lcom/gmodvr/flat/ModManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/gmodvr/flat/ModManager$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 233
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 235
    :try_start_1e7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_203

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;

    .line 236
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v9, v9, Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;->root:Ljava/nio/file/Path;

    invoke-static {v9}, Lcom/gmodvr/flat/ModManager;->deleteEmptyDirectoryTree(Ljava/nio/file/Path;)V

    goto :goto_1eb

    :catch_200
    move-exception p0

    goto/16 :goto_28c

    .line 239
    :cond_203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_207
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_220

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/ModManager$Move;

    .line 240
    iget-object v9, v2, Lcom/gmodvr/flat/ModManager$Move;->source:Ljava/nio/file/Path;

    iget-object v10, v2, Lcom/gmodvr/flat/ModManager$Move;->target:Ljava/nio/file/Path;

    new-array v11, v7, [Ljava/nio/file/CopyOption;

    invoke-static {v9, v10, v11}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 241
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_207

    .line 243
    :cond_220
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_224
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_237

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/ModManager$MarkerChange;

    .line 244
    invoke-virtual {v1}, Lcom/gmodvr/flat/ModManager$MarkerChange;->apply()V

    .line 245
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_236
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_236} :catch_200
    .catch Ljava/lang/RuntimeException; {:try_start_1e7 .. :try_end_236} :catch_200

    goto :goto_224

    .line 267
    :cond_237
    new-instance v0, Lcom/gmodvr/flat/ModManager$Accumulator;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->kind:Lcom/gmodvr/flat/ModManager$Kind;

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/ModManager$Accumulator;-><init>(Ljava/lang/String;Lcom/gmodvr/flat/ModManager$Kind;)V

    .line 268
    iget-object p0, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->members:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_246
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_287

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/ModManager$Member;

    .line 269
    iget-object v2, v1, Lcom/gmodvr/flat/ModManager$Member;->file:Ljava/io/File;

    .line 270
    iget-boolean v3, v1, Lcom/gmodvr/flat/ModManager$Member;->enabled:Z

    if-eq v3, p1, :cond_273

    iget-boolean v3, v1, Lcom/gmodvr/flat/ModManager$Member;->directory:Z

    if-eqz v3, :cond_266

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_273

    .line 271
    :cond_266
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/gmodvr/flat/ModManager$Member;->customRoot:Ljava/io/File;

    iget-object v4, v1, Lcom/gmodvr/flat/ModManager$Member;->canonicalName:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/gmodvr/flat/CustomContentName;->physicalName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_273
    move-object v9, v2

    .line 273
    new-instance v2, Lcom/gmodvr/flat/ModManager$Candidate;

    iget-object v8, v1, Lcom/gmodvr/flat/ModManager$Member;->customRoot:Ljava/io/File;

    iget-object v10, v1, Lcom/gmodvr/flat/ModManager$Member;->canonicalName:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/gmodvr/flat/ModManager$Member;->directory:Z

    move-object v7, v2

    move v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/gmodvr/flat/ModManager$Candidate;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZ)V

    iget-boolean v1, v1, Lcom/gmodvr/flat/ModManager$Member;->descriptor:Z

    invoke-virtual {v0, v2, v1}, Lcom/gmodvr/flat/ModManager$Accumulator;->add(Lcom/gmodvr/flat/ModManager$Candidate;Z)V

    goto :goto_246

    .line 275
    :cond_287
    invoke-virtual {v0}, Lcom/gmodvr/flat/ModManager$Accumulator;->finish()Lcom/gmodvr/flat/ModManager$ModEntry;

    move-result-object p0

    return-object p0

    .line 248
    :goto_28c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    :goto_291
    if-ltz p1, :cond_2a4

    .line 249
    :try_start_293
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/ModManager$MarkerChange;

    invoke-virtual {v0}, Lcom/gmodvr/flat/ModManager$MarkerChange;->rollback()V
    :try_end_29c
    .catch Ljava/io/IOException; {:try_start_293 .. :try_end_29c} :catch_29d

    goto :goto_2a1

    :catch_29d
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a1
    add-int/lit8 p1, p1, -0x1

    goto :goto_291

    .line 252
    :cond_2a4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    const/4 v0, 0x0

    :goto_2aa
    if-ltz p1, :cond_2c7

    .line 253
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/ModManager$Move;

    .line 254
    :try_start_2b2
    iget-object v2, v1, Lcom/gmodvr/flat/ModManager$Move;->target:Ljava/nio/file/Path;

    iget-object v1, v1, Lcom/gmodvr/flat/ModManager$Move;->source:Ljava/nio/file/Path;

    new-array v4, v7, [Ljava/nio/file/CopyOption;

    invoke-static {v2, v1, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_2bb
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2bb} :catch_2bc

    goto :goto_2c4

    :catch_2bc
    move-exception v1

    if-nez v0, :cond_2c1

    move-object v0, v1

    goto :goto_2c4

    .line 257
    :cond_2c1
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2aa

    :cond_2c7
    if-eqz v0, :cond_2cc

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 261
    :cond_2cc
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;

    .line 262
    :try_start_2dc
    invoke-virtual {v0}, Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;->restore()V
    :try_end_2df
    .catch Ljava/io/IOException; {:try_start_2dc .. :try_end_2df} :catch_2e0

    goto :goto_2d0

    :catch_2e0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2d0

    .line 264
    :cond_2e5
    throw p0

    .line 185
    :cond_2e6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "both enabled and disabled copies exist for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_2ff
    new-instance p0, Ljava/io/IOException;

    const-string p1, "mod entry is unavailable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static snapshotEmptyDirectoryTree(Ljava/nio/file/Path;)Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-static {p0, v0}, Lcom/gmodvr/flat/ModManager;->collectEmptyDirectories(Ljava/nio/file/Path;Ljava/util/List;)V

    .line 306
    new-instance v1, Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;

    invoke-direct {v1, p0, v0}, Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;-><init>(Ljava/nio/file/Path;Ljava/util/List;)V

    return-object v1
.end method

.method private static validateMarkerChange(Ljava/nio/file/Path;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_30

    .line 280
    sget-object p1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {p1}, [Ljava/nio/file/LinkOption;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_19

    goto :goto_3c

    .line 281
    :cond_19
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid disabled marker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_30
    sget-object p1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {p1}, [Ljava/nio/file/LinkOption;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-nez p0, :cond_3d

    :goto_3c
    return-void

    .line 284
    :cond_3d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "mod changed while the menu was open"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.gmodvr.flat.ModManager.Accumulator (com.gmodvr.flat.ModManager$Accumulator)
.class final Lcom/gmodvr/flat/ModManager$Accumulator;
.super Ljava/lang/Object;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accumulator"
.end annotation


# instance fields
.field anyDescriptorEnabled:Z

.field anyDisabled:Z

.field anyEnabled:Z

.field anyFolderEnabled:Z

.field anyVpkEnabled:Z

.field conflict:Z

.field hasDescriptor:Z

.field kind:Lcom/gmodvr/flat/ModManager$Kind;

.field final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$Member;",
            ">;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field final statesByCanonicalName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gmodvr/flat/ModManager$Kind;)V
    .registers 4

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->members:Ljava/util/List;

    .line 395
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->statesByCanonicalName:Ljava/util/Map;

    .line 398
    iput-object p1, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->kind:Lcom/gmodvr/flat/ModManager$Kind;

    return-void
.end method


# virtual methods
.method public add(Lcom/gmodvr/flat/ModManager$Candidate;Z)V
    .registers 9

    .line 401
    iget-boolean v0, p1, Lcom/gmodvr/flat/ModManager$Candidate;->directory:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/gmodvr/flat/ModManager$Kind;->FOLDER:Lcom/gmodvr/flat/ModManager$Kind;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/gmodvr/flat/ModManager$Kind;->VPK:Lcom/gmodvr/flat/ModManager$Kind;

    .line 402
    :goto_9
    iget-object v1, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->kind:Lcom/gmodvr/flat/ModManager$Kind;

    if-eq v1, v0, :cond_11

    sget-object v0, Lcom/gmodvr/flat/ModManager$Kind;->MIXED:Lcom/gmodvr/flat/ModManager$Kind;

    iput-object v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->kind:Lcom/gmodvr/flat/ModManager$Kind;

    .line 403
    :cond_11
    iget-object v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->members:Ljava/util/List;

    new-instance v1, Lcom/gmodvr/flat/ModManager$Member;

    invoke-direct {v1, p1, p2}, Lcom/gmodvr/flat/ModManager$Member;-><init>(Lcom/gmodvr/flat/ModManager$Candidate;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyEnabled:Z

    iget-boolean v1, p1, Lcom/gmodvr/flat/ModManager$Candidate;->enabled:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyEnabled:Z

    .line 405
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyDisabled:Z

    xor-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyDisabled:Z

    .line 406
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyFolderEnabled:Z

    iget-boolean v2, p1, Lcom/gmodvr/flat/ModManager$Candidate;->directory:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_35

    if-eqz v1, :cond_35

    move v5, v4

    goto :goto_36

    :cond_35
    move v5, v3

    :goto_36
    or-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyFolderEnabled:Z

    .line 407
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyVpkEnabled:Z

    if-nez v2, :cond_41

    if-eqz v1, :cond_41

    move v2, v4

    goto :goto_42

    :cond_41
    move v2, v3

    :goto_42
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyVpkEnabled:Z

    .line 408
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->hasDescriptor:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->hasDescriptor:Z

    .line 409
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyDescriptorEnabled:Z

    if-eqz p2, :cond_51

    if-eqz v1, :cond_51

    move v3, v4

    :cond_51
    or-int p2, v0, v3

    iput-boolean p2, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyDescriptorEnabled:Z

    .line 410
    iget-object p2, p1, Lcom/gmodvr/flat/ModManager$Candidate;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".sourceandroid-disabled-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_65

    const/4 p2, 0x2

    goto :goto_66

    :cond_65
    move p2, v4

    .line 411
    :goto_66
    iget-object v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->statesByCanonicalName:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/gmodvr/flat/ModManager$Candidate;->customRoot:Ljava/io/File;

    .line 412
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 413
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 411
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a6

    .line 414
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p2, :cond_a6

    iput-boolean v4, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->conflict:Z

    :cond_a6
    return-void
.end method

.method public finish()Lcom/gmodvr/flat/ModManager$ModEntry;
    .registers 9

    .line 418
    new-instance v7, Lcom/gmodvr/flat/ModManager$ModEntry;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->kind:Lcom/gmodvr/flat/ModManager$Kind;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->members:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyFolderEnabled:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->hasDescriptor:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyDescriptorEnabled:Z

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_1c
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyVpkEnabled:Z

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    move v6, v5

    goto :goto_24

    :cond_23
    :goto_23
    move v6, v4

    :goto_24
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyEnabled:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->anyDisabled:Z

    if-eqz v0, :cond_2d

    move v5, v4

    :cond_2d
    iget-boolean p0, p0, Lcom/gmodvr/flat/ModManager$Accumulator;->conflict:Z

    move-object v0, v7

    move v4, v6

    move v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/ModManager$ModEntry;-><init>(Ljava/lang/String;Lcom/gmodvr/flat/ModManager$Kind;Ljava/util/List;ZZZ)V

    return-object v7
.end method

###### Class com.gmodvr.flat.ModManager.Candidate (com.gmodvr.flat.ModManager$Candidate)
.class final Lcom/gmodvr/flat/ModManager$Candidate;
.super Ljava/lang/Object;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Candidate"
.end annotation


# instance fields
.field final canonicalName:Ljava/lang/String;

.field final customRoot:Ljava/io/File;

.field final directory:Z

.field final enabled:Z

.field final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZ)V
    .registers 6

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/gmodvr/flat/ModManager$Candidate;->customRoot:Ljava/io/File;

    .line 367
    iput-object p2, p0, Lcom/gmodvr/flat/ModManager$Candidate;->file:Ljava/io/File;

    .line 368
    iput-object p3, p0, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    .line 369
    iput-boolean p4, p0, Lcom/gmodvr/flat/ModManager$Candidate;->enabled:Z

    .line 370
    iput-boolean p5, p0, Lcom/gmodvr/flat/ModManager$Candidate;->directory:Z

    return-void
.end method

###### Class com.gmodvr.flat.ModManager.EmptyDirectoryTree (com.gmodvr.flat.ModManager$EmptyDirectoryTree)
.class final Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;
.super Ljava/lang/Object;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyDirectoryTree"
.end annotation


# instance fields
.field final directories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final root:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;->root:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;->directories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public restore()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    iget-object p0, p0, Lcom/gmodvr/flat/ModManager$EmptyDirectoryTree;->directories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_6

    :cond_19
    return-void
.end method

###### Class com.gmodvr.flat.ModManager.GameSection (com.gmodvr.flat.ModManager$GameSection)
.class final Lcom/gmodvr/flat/ModManager$GameSection;
.super Ljava/lang/Object;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GameSection"
.end annotation


# instance fields
.field final mods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$ModEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mountedRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final profile:Lcom/gmodvr/flat/GameContentProfile;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/GameContentProfile;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$ModEntry;",
            ">;)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/gmodvr/flat/ModManager$GameSection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    .line 337
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/ModManager$GameSection;->mountedRoots:Ljava/util/List;

    .line 338
    iput-object p3, p0, Lcom/gmodvr/flat/ModManager$GameSection;->mods:Ljava/util/List;

    return-void
.end method

###### Class com.gmodvr.flat.ModManager.Kind (com.gmodvr.flat.ModManager$Kind)
.class final enum Lcom/gmodvr/flat/ModManager$Kind;
.super Ljava/lang/Enum;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/ModManager$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/ModManager$Kind;

.field public static final enum FOLDER:Lcom/gmodvr/flat/ModManager$Kind;

.field public static final enum MIXED:Lcom/gmodvr/flat/ModManager$Kind;

.field public static final enum VPK:Lcom/gmodvr/flat/ModManager$Kind;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/ModManager$Kind;
    .registers 3

    .line 329
    sget-object v0, Lcom/gmodvr/flat/ModManager$Kind;->FOLDER:Lcom/gmodvr/flat/ModManager$Kind;

    sget-object v1, Lcom/gmodvr/flat/ModManager$Kind;->VPK:Lcom/gmodvr/flat/ModManager$Kind;

    sget-object v2, Lcom/gmodvr/flat/ModManager$Kind;->MIXED:Lcom/gmodvr/flat/ModManager$Kind;

    filled-new-array {v0, v1, v2}, [Lcom/gmodvr/flat/ModManager$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 329
    new-instance v0, Lcom/gmodvr/flat/ModManager$Kind;

    const-string v1, "FOLDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/ModManager$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/ModManager$Kind;->FOLDER:Lcom/gmodvr/flat/ModManager$Kind;

    new-instance v0, Lcom/gmodvr/flat/ModManager$Kind;

    const-string v1, "VPK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/ModManager$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/ModManager$Kind;->VPK:Lcom/gmodvr/flat/ModManager$Kind;

    new-instance v0, Lcom/gmodvr/flat/ModManager$Kind;

    const-string v1, "MIXED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/ModManager$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/ModManager$Kind;->MIXED:Lcom/gmodvr/flat/ModManager$Kind;

    invoke-static {}, Lcom/gmodvr/flat/ModManager$Kind;->$values()[Lcom/gmodvr/flat/ModManager$Kind;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/ModManager$Kind;->$VALUES:[Lcom/gmodvr/flat/ModManager$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/ModManager$Kind;
    .registers 2

    .line 329
    const-class v0, Lcom/gmodvr/flat/ModManager$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/ModManager$Kind;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/ModManager$Kind;
    .registers 1

    .line 329
    sget-object v0, Lcom/gmodvr/flat/ModManager$Kind;->$VALUES:[Lcom/gmodvr/flat/ModManager$Kind;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/ModManager$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/ModManager$Kind;

    return-object v0
.end method

###### Class com.gmodvr.flat.ModManager.MarkerChange (com.gmodvr.flat.ModManager$MarkerChange)
.class final Lcom/gmodvr/flat/ModManager$MarkerChange;
.super Ljava/lang/Object;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MarkerChange"
.end annotation


# instance fields
.field final enabled:Z

.field final marker:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Z)V
    .registers 3

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->marker:Ljava/nio/file/Path;

    iput-boolean p2, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->enabled:Z

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->marker:Ljava/nio/file/Path;

    iget-boolean v1, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->enabled:Z

    invoke-static {v0, v1}, Lcom/gmodvr/flat/ModManager;->-$$Nest$smvalidateMarkerChange(Ljava/nio/file/Path;Z)V

    .line 430
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->enabled:Z

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->marker:Ljava/nio/file/Path;

    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    goto :goto_19

    .line 431
    :cond_11
    iget-object p0, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->marker:Ljava/nio/file/Path;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    :goto_19
    return-void
.end method

.method public rollback()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->enabled:Z

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->marker:Ljava/nio/file/Path;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_18

    .line 435
    :cond_d
    iget-object v0, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->marker:Ljava/nio/file/Path;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gmodvr/flat/ModManager;->-$$Nest$smvalidateMarkerChange(Ljava/nio/file/Path;Z)V

    iget-object p0, p0, Lcom/gmodvr/flat/ModManager$MarkerChange;->marker:Ljava/nio/file/Path;

    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    :goto_18
    return-void
.end method

###### Class com.gmodvr.flat.ModManager.Member (com.gmodvr.flat.ModManager$Member)
.class final Lcom/gmodvr/flat/ModManager$Member;
.super Ljava/lang/Object;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Member"
.end annotation


# instance fields
.field final canonicalName:Ljava/lang/String;

.field final customRoot:Ljava/io/File;

.field final descriptor:Z

.field final directory:Z

.field final enabled:Z

.field final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/ModManager$Candidate;Z)V
    .registers 4

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iget-object v0, p1, Lcom/gmodvr/flat/ModManager$Candidate;->customRoot:Ljava/io/File;

    iput-object v0, p0, Lcom/gmodvr/flat/ModManager$Member;->customRoot:Ljava/io/File;

    .line 383
    iget-object v0, p1, Lcom/gmodvr/flat/ModManager$Candidate;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/gmodvr/flat/ModManager$Member;->file:Ljava/io/File;

    .line 384
    iget-object v0, p1, Lcom/gmodvr/flat/ModManager$Candidate;->canonicalName:Ljava/lang/String;

    iput-object v0, p0, Lcom/gmodvr/flat/ModManager$Member;->canonicalName:Ljava/lang/String;

    .line 385
    iget-boolean v0, p1, Lcom/gmodvr/flat/ModManager$Candidate;->enabled:Z

    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManager$Member;->enabled:Z

    .line 386
    iput-boolean p2, p0, Lcom/gmodvr/flat/ModManager$Member;->descriptor:Z

    .line 387
    iget-boolean p1, p1, Lcom/gmodvr/flat/ModManager$Candidate;->directory:Z

    iput-boolean p1, p0, Lcom/gmodvr/flat/ModManager$Member;->directory:Z

    return-void
.end method

###### Class com.gmodvr.flat.ModManager.ModEntry (com.gmodvr.flat.ModManager$ModEntry)
.class final Lcom/gmodvr/flat/ModManager$ModEntry;
.super Ljava/lang/Object;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModEntry"
.end annotation


# instance fields
.field final conflict:Z

.field final enabled:Z

.field kind:Lcom/gmodvr/flat/ModManager$Kind;

.field final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$Member;",
            ">;"
        }
    .end annotation
.end field

.field final mixed:Z

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gmodvr/flat/ModManager$Kind;Ljava/util/List;ZZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/gmodvr/flat/ModManager$Kind;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$Member;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    .line 351
    iput-object p2, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->kind:Lcom/gmodvr/flat/ModManager$Kind;

    .line 352
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->members:Ljava/util/List;

    .line 353
    iput-boolean p4, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->enabled:Z

    .line 354
    iput-boolean p5, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->mixed:Z

    .line 355
    iput-boolean p6, p0, Lcom/gmodvr/flat/ModManager$ModEntry;->conflict:Z

    return-void
.end method

###### Class com.gmodvr.flat.ModManager.Move (com.gmodvr.flat.ModManager$Move)
.class final Lcom/gmodvr/flat/ModManager$Move;
.super Ljava/lang/Object;
.source "ModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Move"
.end annotation


# instance fields
.field final descriptor:Z

.field final source:Ljava/nio/file/Path;

.field final target:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;Z)V
    .registers 4

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/gmodvr/flat/ModManager$Move;->source:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManager$Move;->target:Ljava/nio/file/Path;

    iput-boolean p3, p0, Lcom/gmodvr/flat/ModManager$Move;->descriptor:Z

    return-void
.end method

###### Class com.gmodvr.flat.ModManager$$ExternalSyntheticLambda0 (com.gmodvr.flat.ModManager$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/ModManager$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/gmodvr/flat/ModManager$ModEntry;

    check-cast p2, Lcom/gmodvr/flat/ModManager$ModEntry;

    invoke-static {p1, p2}, Lcom/gmodvr/flat/ModManager;->$r8$lambda$pjTc4a7WOaLhJ3GB_5svqfmNqZQ(Lcom/gmodvr/flat/ModManager$ModEntry;Lcom/gmodvr/flat/ModManager$ModEntry;)I

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.ModManager$$ExternalSyntheticLambda1 (com.gmodvr.flat.ModManager$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/ModManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gmodvr/flat/ModManager$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    iget-boolean p0, p0, Lcom/gmodvr/flat/ModManager$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Lcom/gmodvr/flat/ModManager$Move;

    check-cast p2, Lcom/gmodvr/flat/ModManager$Move;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/ModManager;->$r8$lambda$clXV_ei5smUdPe4cxfvU0W9LHUA(ZLcom/gmodvr/flat/ModManager$Move;Lcom/gmodvr/flat/ModManager$Move;)I

    move-result p0

    return p0
.end method
