###### Class com.gmodvr.flat.CopyImporter (com.gmodvr.flat.CopyImporter)
.class final Lcom/gmodvr/flat/CopyImporter;
.super Ljava/lang/Object;
.source "CopyImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/CopyImporter$Source;,
        Lcom/gmodvr/flat/CopyImporter$Entry;,
        Lcom/gmodvr/flat/CopyImporter$Item;
    }
.end annotation


# instance fields
.field private completed:J

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gmodvr/flat/CopyImporter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdate:J

.field private final profile:Lcom/gmodvr/flat/GameContentProfile;

.field private final progress:Lcom/gmodvr/flat/MoveImporter$Progress;

.field private final source:Lcom/gmodvr/flat/CopyImporter$Source;

.field private total:J

.field private unknown:Z


# direct methods
.method public static synthetic $r8$lambda$gPUDBLbMV-3JcILGiCAc5vS0nLs(Lcom/gmodvr/flat/CopyImporter;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/CopyImporter;->lambda$copy$0(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smencode(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/CopyImporter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/gmodvr/flat/CopyImporter$Source;Lcom/gmodvr/flat/MoveImporter$Progress;)V
    .registers 4

    .line 49
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    invoke-direct {p0, v0, p1, p2}, Lcom/gmodvr/flat/CopyImporter;-><init>(Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/CopyImporter$Source;Lcom/gmodvr/flat/MoveImporter$Progress;)V

    return-void
.end method

.method public constructor <init>(Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/CopyImporter$Source;Lcom/gmodvr/flat/MoveImporter$Progress;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/CopyImporter;->items:Ljava/util/ArrayList;

    if-eqz p1, :cond_d

    goto :goto_f

    .line 53
    :cond_d
    sget-object p1, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    :goto_f
    iput-object p1, p0, Lcom/gmodvr/flat/CopyImporter;->profile:Lcom/gmodvr/flat/GameContentProfile;

    .line 54
    iput-object p2, p0, Lcom/gmodvr/flat/CopyImporter;->source:Lcom/gmodvr/flat/CopyImporter$Source;

    .line 55
    iput-object p3, p0, Lcom/gmodvr/flat/CopyImporter;->progress:Lcom/gmodvr/flat/MoveImporter$Progress;

    return-void
.end method

.method private children(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CopyImporter$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/gmodvr/flat/CopyImporter;->source:Lcom/gmodvr/flat/CopyImporter$Source;

    invoke-interface {p0, p1}, Lcom/gmodvr/flat/CopyImporter$Source;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 68
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/CopyImporter$Entry;

    .line 70
    iget-object v2, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    const-string v3, "/"

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_5f

    iget-object v1, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    goto :goto_f

    .line 72
    :cond_5f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid or duplicate filename in selected folder."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    return-object p0
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 34
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private gameFolders()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gmodvr/flat/CopyImporter$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    iget-object p0, p0, Lcom/gmodvr/flat/CopyImporter;->source:Lcom/gmodvr/flat/CopyImporter$Source;

    invoke-interface {p0}, Lcom/gmodvr/flat/CopyImporter$Source;->root()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/gmodvr/flat/CopyImporter$Source;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/CopyImporter$Entry;

    .line 81
    iget-boolean v2, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->directory:Z

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-static {v2}, Lcom/gmodvr/flat/GameFolder;->destination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_36

    goto :goto_13

    .line 82
    :cond_36
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate game folder in selected folder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_4f
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 86
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/gmodvr/flat/GameFolder;->select(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    invoke-static {v2}, Lcom/gmodvr/flat/GameFolder;->destination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/CopyImporter$Entry;

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_7a
    return-object p0
.end method

.method private synthetic lambda$copy$0(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object p0, p0, Lcom/gmodvr/flat/CopyImporter;->progress:Lcom/gmodvr/flat/MoveImporter$Progress;

    div-int/lit8 p2, p2, 0xa

    add-int/lit8 p2, p2, 0x5a

    invoke-interface {p0, p1, p2}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    return-void
.end method

.method private report(Ljava/lang/String;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    if-nez p3, :cond_11

    .line 60
    iget-wide v2, p0, Lcom/gmodvr/flat/CopyImporter;->lastUpdate:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xee6b280

    cmp-long p3, v2, v4

    if-lez p3, :cond_18

    .line 61
    :cond_11
    iput-wide v0, p0, Lcom/gmodvr/flat/CopyImporter;->lastUpdate:J

    .line 62
    iget-object p0, p0, Lcom/gmodvr/flat/CopyImporter;->progress:Lcom/gmodvr/flat/MoveImporter$Progress;

    invoke-interface {p0, p1, p2}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    :cond_18
    return-void
.end method

.method private scan(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p3, v0, :cond_8d

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scanning files \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmodvr/flat/CopyImporter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/gmodvr/flat/CopyImporter;->report(Ljava/lang/String;IZ)V

    .line 95
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CopyImporter;->children(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/CopyImporter$Entry;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-boolean v2, v0, Lcom/gmodvr/flat/CopyImporter$Entry;->directory:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5b

    iget-object v0, v0, Lcom/gmodvr/flat/CopyImporter$Entry;->id:Ljava/lang/String;

    add-int/2addr v3, p3

    invoke-direct {p0, v0, v1, v3}, Lcom/gmodvr/flat/CopyImporter;->scan(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2d

    .line 99
    :cond_5b
    iget-object v2, p0, Lcom/gmodvr/flat/CopyImporter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const v4, 0x30d40

    if-ge v2, v4, :cond_84

    .line 100
    iget-object v2, p0, Lcom/gmodvr/flat/CopyImporter;->items:Ljava/util/ArrayList;

    new-instance v4, Lcom/gmodvr/flat/CopyImporter$Item;

    invoke-direct {v4, v0, v1}, Lcom/gmodvr/flat/CopyImporter$Item;-><init>(Lcom/gmodvr/flat/CopyImporter$Entry;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-wide v0, v0, Lcom/gmodvr/flat/CopyImporter$Entry;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_7b

    iput-boolean v3, p0, Lcom/gmodvr/flat/CopyImporter;->unknown:Z

    goto :goto_2d

    .line 102
    :cond_7b
    iget-wide v2, p0, Lcom/gmodvr/flat/CopyImporter;->total:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gmodvr/flat/CopyImporter;->total:J

    goto :goto_2d

    .line 99
    :cond_84
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Too many files in selected folder."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    return-void

    .line 93
    :cond_8d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Selected folders are nested too deeply."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static staging(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".sourceandroid-copy-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/io/File;)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    .line 109
    invoke-static {v3}, Lcom/gmodvr/flat/CopyImporter;->staging(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 110
    new-instance v5, Ljava/io/File;

    const-string v6, ".copy-origin"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    new-instance v7, Ljava/io/File;

    const-string v8, ".copy-ready"

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    new-instance v9, Ljava/io/File;

    const-string v10, ".copy-files"

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    new-instance v11, Ljava/io/File;

    const-string v12, ".copy-published"

    invoke-direct {v11, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_42

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_42

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_42

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    invoke-static {v13}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 116
    :cond_42
    new-instance v13, Ljava/io/File;

    const-string v14, ".sourceandroid-move/.plan"

    invoke-direct {v13, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_78

    .line 118
    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v13, v14}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v13

    .line 119
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_70

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_70

    goto :goto_78

    .line 120
    :cond_70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Finish the interrupted move using its original folder before starting a copy."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_78
    :goto_78
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_a2

    new-instance v13, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-static {v14}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v14

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v14, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v14, v0, Lcom/gmodvr/flat/CopyImporter;->source:Lcom/gmodvr/flat/CopyImporter$Source;

    invoke-interface {v14}, Lcom/gmodvr/flat/CopyImporter$Source;->identity()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9a

    goto :goto_a2

    .line 123
    :cond_9a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A copy is paused. Select the same source folder to resume it."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_a2
    :goto_a2
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_cc

    new-instance v13, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-static {v14}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v14

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v14, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v14, v0, Lcom/gmodvr/flat/CopyImporter;->source:Lcom/gmodvr/flat/CopyImporter$Source;

    invoke-interface {v14}, Lcom/gmodvr/flat/CopyImporter$Source;->identity()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c4

    goto :goto_cc

    .line 125
    :cond_c4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Finish the previous copy using its original source folder."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_cc
    :goto_cc
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_f6

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_f6

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_df

    goto :goto_f6

    .line 127
    :cond_df
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized copy staging folder; files preserved at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_f6
    :goto_f6
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_51e

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_51e

    .line 130
    const-string v13, "Scanning game folders\u2026"

    const/4 v14, -0x1

    invoke-direct {v0, v13, v14, v2}, Lcom/gmodvr/flat/CopyImporter;->report(Ljava/lang/String;IZ)V

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/gmodvr/flat/CopyImporter;->gameFolders()Ljava/util/Map;

    move-result-object v13

    .line 132
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 133
    iget-object v14, v0, Lcom/gmodvr/flat/CopyImporter;->profile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v14, v15}, Lcom/gmodvr/flat/GameFolder;->complete(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/Collection;)Z

    move-result v14

    if-eqz v14, :cond_503

    .line 136
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_120
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_141

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/gmodvr/flat/CopyImporter$Entry;

    iget-object v2, v2, Lcom/gmodvr/flat/CopyImporter$Entry;->id:Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v0, v2, v14, v1}, Lcom/gmodvr/flat/CopyImporter;->scan(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x1

    goto :goto_120

    .line 139
    :cond_141
    iget-object v2, v0, Lcom/gmodvr/flat/CopyImporter;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v2, v2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string v13, "portal2"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v14, "Missing core game file: "

    const-wide/16 v17, 0x0

    if-eqz v2, :cond_1dd

    .line 140
    const-string v2, "portal2_dlc1"

    const-string v1, "portal2_dlc2"

    filled-new-array {v13, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_161
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    iget-object v13, v0, Lcom/gmodvr/flat/CopyImporter;->items:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_173
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    move-object/from16 v20, v1

    const-string v1, "/pak01_dir.vpk"

    if-eqz v19, :cond_1be

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v13

    move-object/from16 v13, v19

    check-cast v13, Lcom/gmodvr/flat/CopyImporter$Item;

    move-object/from16 v19, v6

    .line 143
    iget-object v6, v13, Lcom/gmodvr/flat/CopyImporter$Item;->path:Ljava/lang/String;

    move-object/from16 v22, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    iget-object v1, v13, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    move-object v6, v12

    iget-wide v12, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->size:J

    cmp-long v1, v12, v17

    if-eqz v1, :cond_1b4

    move-object v12, v6

    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move-object/from16 v8, v22

    goto :goto_161

    :cond_1b3
    move-object v6, v12

    :cond_1b4
    move-object v12, v6

    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move-object/from16 v13, v21

    move-object/from16 v8, v22

    goto :goto_173

    .line 148
    :cond_1be
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d6
    move-object/from16 v19, v6

    move-object/from16 v22, v8

    move-object v6, v12

    goto/16 :goto_281

    :cond_1dd
    move-object/from16 v19, v6

    move-object/from16 v22, v8

    move-object v6, v12

    .line 151
    iget-object v1, v0, Lcom/gmodvr/flat/CopyImporter;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v1, v1, Lcom/gmodvr/flat/GameContentProfile;->depots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_281

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/ContentComponent;

    .line 152
    iget-object v8, v2, Lcom/gmodvr/flat/ContentComponent;->coreVpkRelPath:Ljava/lang/String;

    if-eqz v8, :cond_27b

    .line 154
    iget-object v8, v0, Lcom/gmodvr/flat/CopyImporter;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_200
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_225

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/gmodvr/flat/CopyImporter$Item;

    .line 155
    iget-object v13, v12, Lcom/gmodvr/flat/CopyImporter$Item;->path:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v2, Lcom/gmodvr/flat/ContentComponent;->coreVpkRelPath:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_222

    iget-object v1, v12, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    iget-wide v12, v1, Lcom/gmodvr/flat/CopyImporter$Entry;->size:J

    cmp-long v1, v12, v17

    if-eqz v1, :cond_222

    const/4 v1, 0x1

    goto :goto_228

    :cond_222
    move-object/from16 v1, v20

    goto :goto_200

    :cond_225
    move-object/from16 v20, v1

    const/4 v1, 0x0

    :goto_228
    if-nez v1, :cond_25f

    .line 161
    iget-object v8, v0, Lcom/gmodvr/flat/CopyImporter;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_230
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_25f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/gmodvr/flat/CopyImporter$Item;

    .line 162
    iget-object v12, v12, Lcom/gmodvr/flat/CopyImporter$Item;->path:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v1

    iget-object v1, v2, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gameinfo.txt"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25c

    const/16 v21, 0x1

    goto :goto_261

    :cond_25c
    move/from16 v1, v21

    goto :goto_230

    :cond_25f
    move/from16 v21, v1

    :goto_261
    if-eqz v21, :cond_264

    goto :goto_27d

    .line 168
    :cond_264
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gmodvr/flat/ContentComponent;->coreVpkRelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27b
    move-object/from16 v20, v1

    :goto_27d
    move-object/from16 v1, v20

    goto/16 :goto_1ea

    .line 172
    :cond_281
    :goto_281
    invoke-static {v4}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 173
    iget-object v1, v0, Lcom/gmodvr/flat/CopyImporter;->source:Lcom/gmodvr/flat/CopyImporter$Source;

    invoke-interface {v1}, Lcom/gmodvr/flat/CopyImporter$Source;->identity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_291
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/gmodvr/flat/GameMedia;->hide(Ljava/io/File;)V

    goto :goto_291

    .line 176
    :cond_2a6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v2

    const-string v8, " "

    if-eqz v2, :cond_2fd

    .line 178
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v12}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_2c1
    :goto_2c1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2fd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 179
    invoke-virtual {v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 180
    array-length v14, v13

    const/4 v15, 0x4

    if-eq v14, v15, :cond_2d6

    goto :goto_2c1

    .line 182
    :cond_2d6
    :try_start_2d6
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v5, v13, v15

    invoke-virtual {v14, v5}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 183
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v5

    const/4 v14, 0x1

    aget-object v15, v13, v14

    invoke-virtual {v5, v15}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    const/4 v5, 0x2

    .line 184
    aget-object v14, v13, v5

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    const/4 v5, 0x3

    .line 185
    aget-object v5, v13, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2f6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d6 .. :try_end_2f6} :catch_2c1

    const/4 v5, 0x0

    .line 187
    aget-object v13, v13, v5

    invoke-interface {v1, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c1

    .line 191
    :cond_2fd
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 192
    iget-object v5, v0, Lcom/gmodvr/flat/CopyImporter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_308
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_31e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/gmodvr/flat/CopyImporter$Item;

    iget-object v12, v12, Lcom/gmodvr/flat/CopyImporter$Item;->path:Ljava/lang/String;

    invoke-static {v12}, Lcom/gmodvr/flat/CopyImporter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_308

    .line 193
    :cond_31e
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_326
    :goto_326
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_35d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x2

    .line 194
    invoke-virtual {v12, v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    aget-object v12, v12, v14

    .line 195
    invoke-interface {v2, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_326

    .line 196
    new-instance v14, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v12

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4, v14}, Lcom/gmodvr/flat/Storage;->child(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 197
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_326

    invoke-static {v12}, Lcom/gmodvr/flat/Storage;->delete(Ljava/io/File;)V

    goto :goto_326

    .line 201
    :cond_35d
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v2, v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 202
    :try_start_363
    iget-object v5, v0, Lcom/gmodvr/flat/CopyImporter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_369
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gmodvr/flat/CopyImporter$Item;

    .line 203
    invoke-virtual {v8}, Lcom/gmodvr/flat/CopyImporter$Item;->stamp()Ljava/lang/String;

    move-result-object v9

    .line 204
    iget-object v12, v8, Lcom/gmodvr/flat/CopyImporter$Item;->path:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/gmodvr/flat/Storage;->child(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 205
    iget-object v13, v8, Lcom/gmodvr/flat/CopyImporter$Item;->path:Ljava/lang/String;

    invoke-static {v13}, Lcom/gmodvr/flat/CopyImporter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d2

    iget-object v13, v8, Lcom/gmodvr/flat/CopyImporter$Item;->path:Ljava/lang/String;

    invoke-static {v13}, Lcom/gmodvr/flat/CopyImporter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d2

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_3d2

    iget-object v13, v8, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    iget-wide v13, v13, Lcom/gmodvr/flat/CopyImporter$Entry;->size:J

    cmp-long v13, v13, v17

    if-ltz v13, :cond_3c0

    .line 206
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    iget-object v15, v8, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    move-object/from16 v21, v5

    move-object/from16 v20, v6

    iget-wide v5, v15, Lcom/gmodvr/flat/CopyImporter$Entry;->size:J

    cmp-long v5, v13, v5

    if-nez v5, :cond_3d6

    goto :goto_3c4

    :catchall_3bc
    move-exception v0

    move-object v1, v0

    goto/16 :goto_4f9

    :cond_3c0
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    .line 207
    :goto_3c4
    iget-wide v5, v0, Lcom/gmodvr/flat/CopyImporter;->completed:J

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v5, v8

    iput-wide v5, v0, Lcom/gmodvr/flat/CopyImporter;->completed:J

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    goto :goto_369

    :cond_3d2
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    .line 210
    :cond_3d6
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 211
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".part"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v6, v0, Lcom/gmodvr/flat/CopyImporter;->source:Lcom/gmodvr/flat/CopyImporter$Source;

    iget-object v13, v8, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    iget-object v13, v13, Lcom/gmodvr/flat/CopyImporter$Entry;->id:Ljava/lang/String;

    invoke-interface {v6, v13}, Lcom/gmodvr/flat/CopyImporter$Source;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_401
    .catchall {:try_start_363 .. :try_end_401} :catchall_3bc

    :try_start_401
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_406
    .catchall {:try_start_401 .. :try_end_406} :catchall_4ca

    const/high16 v14, 0x40000

    .line 213
    :try_start_408
    new-array v14, v14, [B

    .line 215
    :goto_40a
    invoke-virtual {v6, v14}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move-object/from16 v23, v1

    const/4 v1, -0x1

    if-eq v15, v1, :cond_478

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v13, v14, v1, v15}, Ljava/io/OutputStream;->write([BII)V

    move-object v1, v10

    move-object/from16 v24, v11

    .line 217
    iget-wide v10, v0, Lcom/gmodvr/flat/CopyImporter;->completed:J

    move-object/from16 v25, v14

    int-to-long v14, v15

    add-long/2addr v10, v14

    iput-wide v10, v0, Lcom/gmodvr/flat/CopyImporter;->completed:J

    .line 218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Copying "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    iget-object v11, v11, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, v0, Lcom/gmodvr/flat/CopyImporter;->unknown:Z

    if-eqz v11, :cond_445

    move-object v11, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    const/4 v3, -0x1

    :goto_443
    const/4 v4, 0x0

    goto :goto_463

    :cond_445
    iget-wide v14, v0, Lcom/gmodvr/flat/CopyImporter;->completed:J

    const-wide/16 v26, 0x64

    mul-long v14, v14, v26

    move-object v11, v3

    move-object/from16 v26, v4

    iget-wide v3, v0, Lcom/gmodvr/flat/CopyImporter;->total:J

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    const-wide/16 v7, 0x1

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    div-long/2addr v14, v3

    const-wide/16 v3, 0x63

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_443

    :goto_463
    invoke-direct {v0, v10, v3, v4}, Lcom/gmodvr/flat/CopyImporter;->report(Ljava/lang/String;IZ)V
    :try_end_466
    .catchall {:try_start_408 .. :try_end_466} :catchall_475

    move-object v10, v1

    move-object v3, v11

    move-object/from16 v1, v23

    move-object/from16 v11, v24

    move-object/from16 v14, v25

    move-object/from16 v4, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    goto :goto_40a

    :catchall_475
    move-exception v0

    move-object v1, v0

    goto :goto_4cd

    :cond_478
    move-object/from16 v26, v4

    move-object/from16 v27, v7

    move-object v1, v10

    move-object/from16 v24, v11

    move-object v11, v3

    .line 220
    :try_start_480
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_483
    .catchall {:try_start_480 .. :try_end_483} :catchall_4ca

    :try_start_483
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 221
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v15, 0x0

    aput-object v5, v6, v15

    invoke-static {v3, v4, v6}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 223
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4ba
    .catchall {:try_start_483 .. :try_end_4ba} :catchall_3bc

    move-object v10, v1

    move-object v3, v11

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v1, v23

    move-object/from16 v11, v24

    move-object/from16 v4, v26

    move-object/from16 v7, v27

    goto/16 :goto_369

    :catchall_4ca
    move-exception v0

    move-object v1, v0

    goto :goto_4d7

    .line 212
    :goto_4cd
    :try_start_4cd
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_4d0
    .catchall {:try_start_4cd .. :try_end_4d0} :catchall_4d1

    goto :goto_4d6

    :catchall_4d1
    move-exception v0

    move-object v3, v0

    :try_start_4d3
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d6
    throw v1
    :try_end_4d7
    .catchall {:try_start_4d3 .. :try_end_4d7} :catchall_4ca

    :goto_4d7
    if-eqz v6, :cond_4e2

    :try_start_4d9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4dc
    .catchall {:try_start_4d9 .. :try_end_4dc} :catchall_4dd

    goto :goto_4e2

    :catchall_4dd
    move-exception v0

    move-object v3, v0

    :try_start_4df
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4e2
    :goto_4e2
    throw v1
    :try_end_4e3
    .catchall {:try_start_4df .. :try_end_4e3} :catchall_3bc

    :cond_4e3
    move-object/from16 v26, v4

    move-object/from16 v20, v6

    move-object/from16 v27, v7

    move-object v1, v10

    move-object/from16 v24, v11

    const/4 v15, 0x0

    move-object v11, v3

    .line 225
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 226
    const-string v2, "ready\n"

    move-object/from16 v3, v27

    invoke-static {v3, v2}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_52b

    .line 201
    :goto_4f9
    :try_start_4f9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4fc
    .catchall {:try_start_4f9 .. :try_end_4fc} :catchall_4fd

    goto :goto_502

    :catchall_4fd
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_502
    throw v1

    .line 134
    :cond_503
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required game folders for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/gmodvr/flat/CopyImporter;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v0, v0, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51e
    move v15, v1

    move-object/from16 v26, v4

    move-object/from16 v19, v6

    move-object/from16 v22, v8

    move-object v1, v10

    move-object/from16 v24, v11

    move-object/from16 v20, v12

    move-object v11, v3

    .line 229
    :goto_52b
    iget-object v2, v0, Lcom/gmodvr/flat/CopyImporter;->profile:Lcom/gmodvr/flat/GameContentProfile;

    new-instance v3, Lcom/gmodvr/flat/CopyImporter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/gmodvr/flat/CopyImporter$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/CopyImporter;)V

    move-object/from16 v4, v26

    invoke-static {v4, v11, v2, v3}, Lcom/gmodvr/flat/MoveImporter;->move(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/MoveImporter$Progress;)V

    .line 230
    iget-object v2, v0, Lcom/gmodvr/flat/CopyImporter;->source:Lcom/gmodvr/flat/CopyImporter$Source;

    invoke-interface {v2}, Lcom/gmodvr/flat/CopyImporter$Source;->identity()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-static {v3, v2}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b8

    .line 233
    array-length v5, v2

    move v6, v15

    :goto_54a
    if-ge v6, v5, :cond_584

    aget-object v7, v2, v6

    .line 234
    const-string v8, ".copy-part"

    move-object/from16 v9, v19

    move-object/from16 v11, v20

    move-object/from16 v10, v22

    filled-new-array {v9, v1, v10, v8, v11}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56d

    const/4 v7, 0x1

    add-int/2addr v6, v7

    move-object/from16 v19, v9

    move-object/from16 v22, v10

    move-object/from16 v20, v11

    goto :goto_54a

    .line 235
    :cond_56d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected files in completed copy staging; preserved at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_584
    move-object/from16 v11, v20

    .line 238
    array-length v1, v2

    :goto_587
    if-ge v15, v1, :cond_5a0

    aget-object v5, v2, v15

    .line 239
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_59d

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    :cond_59d
    const/4 v5, 0x1

    add-int/2addr v15, v5

    goto :goto_587

    .line 241
    :cond_5a0
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 242
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 243
    iget-object v0, v0, Lcom/gmodvr/flat/CopyImporter;->progress:Lcom/gmodvr/flat/MoveImporter$Progress;

    const-string v1, "Copy complete. Source files were kept."

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/gmodvr/flat/MoveImporter$Progress;->update(Ljava/lang/String;I)V

    return-void

    .line 232
    :cond_5b8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot inspect completed copy records."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.gmodvr.flat.CopyImporter.Entry (com.gmodvr.flat.CopyImporter$Entry)
.class final Lcom/gmodvr/flat/CopyImporter$Entry;
.super Ljava/lang/Object;
.source "CopyImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/CopyImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field final directory:Z

.field final id:Ljava/lang/String;

.field final modified:J

.field final name:Ljava/lang/String;

.field final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJJ)V
    .registers 8

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/gmodvr/flat/CopyImporter$Entry;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/CopyImporter$Entry;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gmodvr/flat/CopyImporter$Entry;->directory:Z

    iput-wide p4, p0, Lcom/gmodvr/flat/CopyImporter$Entry;->size:J

    iput-wide p6, p0, Lcom/gmodvr/flat/CopyImporter$Entry;->modified:J

    return-void
.end method

###### Class com.gmodvr.flat.CopyImporter.Item (com.gmodvr.flat.CopyImporter$Item)
.class final Lcom/gmodvr/flat/CopyImporter$Item;
.super Ljava/lang/Object;
.source "CopyImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/CopyImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field final entry:Lcom/gmodvr/flat/CopyImporter$Entry;

.field final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/CopyImporter$Entry;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    iput-object p2, p0, Lcom/gmodvr/flat/CopyImporter$Item;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public stamp()Ljava/lang/String;
    .registers 5

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmodvr/flat/CopyImporter$Item;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/gmodvr/flat/CopyImporter;->-$$Nest$smencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    iget-object v2, v2, Lcom/gmodvr/flat/CopyImporter$Entry;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/gmodvr/flat/CopyImporter;->-$$Nest$smencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    iget-wide v2, v2, Lcom/gmodvr/flat/CopyImporter$Entry;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/CopyImporter$Item;->entry:Lcom/gmodvr/flat/CopyImporter$Entry;

    iget-wide v1, p0, Lcom/gmodvr/flat/CopyImporter$Entry;->modified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.CopyImporter.Source (com.gmodvr.flat.CopyImporter$Source)
.class interface abstract Lcom/gmodvr/flat/CopyImporter$Source;
.super Ljava/lang/Object;
.source "CopyImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/CopyImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Source"
.end annotation


# virtual methods
.method public abstract identity()Ljava/lang/String;
.end method

.method public abstract list(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CopyImporter$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract root()Ljava/lang/String;
.end method

###### Class com.gmodvr.flat.CopyImporter$$ExternalSyntheticLambda0 (com.gmodvr.flat.CopyImporter$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/CopyImporter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/MoveImporter$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CopyImporter;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CopyImporter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CopyImporter$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/CopyImporter;

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/String;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/CopyImporter$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/CopyImporter;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/CopyImporter;->$r8$lambda$gPUDBLbMV-3JcILGiCAc5vS0nLs(Lcom/gmodvr/flat/CopyImporter;Ljava/lang/String;I)V

    return-void
.end method
