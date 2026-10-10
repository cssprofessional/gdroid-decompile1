###### Class com.gmodvr.flat.WorkshopMaps (com.gmodvr.flat.WorkshopMaps)
.class final Lcom/gmodvr/flat/WorkshopMaps;
.super Ljava/lang/Object;
.source "WorkshopMaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/WorkshopMaps$Entry;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Gf5lKxfwMq5VhsfgQ7BMJCym4uE(Lcom/gmodvr/flat/WorkshopMaps$Entry;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopMaps;->lambda$scan$1(Lcom/gmodvr/flat/WorkshopMaps$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_X_Nwo3aOgaJGd_2jj78AKBHR9o(Lcom/gmodvr/flat/WorkshopMaps$Entry;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopMaps;->lambda$scan$0(Lcom/gmodvr/flat/WorkshopMaps$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collect(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/Map;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gmodvr/flat/WorkshopMaps$Entry;",
            ">;[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v0}, [Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 49
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/gmodvr/flat/WorkshopMaps$1;

    invoke-direct {v1, p3, p0, p2, p1}, Lcom/gmodvr/flat/WorkshopMaps$1;-><init>([ILjava/nio/file/Path;Ljava/util/Map;Ljava/lang/String;)V

    const/16 p1, 0x20

    invoke-static {p0, v0, p1, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    return-void
.end method

.method private static synthetic lambda$scan$0(Lcom/gmodvr/flat/WorkshopMaps$Entry;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopMaps$Entry;->title:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$scan$1(Lcom/gmodvr/flat/WorkshopMaps$Entry;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopMaps$Entry;->map:Ljava/lang/String;

    return-object p0
.end method

.method public static scan(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/gmodvr/flat/GameContentProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopMaps$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 20
    filled-new-array {v1}, [I

    move-result-object v2

    .line 21
    iget-object v3, p2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string v4, "garrysmod"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "maps"

    if-eqz v3, :cond_41

    .line 24
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gmodvr/flat/GmodAddons$Addon;

    .line 25
    iget-boolean v6, v5, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    if-eqz v6, :cond_1e

    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0, v2}, Lcom/gmodvr/flat/WorkshopMaps;->collect(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/Map;[I)V

    goto :goto_1e

    .line 29
    :cond_41
    new-instance v3, Ljava/io/File;

    const-string v5, "custom"

    invoke-direct {v3, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/custom"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    filled-new-array {v3, p1}, [Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6c
    :goto_6c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_fa

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_7f

    goto :goto_6c

    .line 31
    :cond_7f
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_e3

    .line 33
    new-instance p1, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda1;-><init>()V

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 34
    array-length p1, p2

    move v3, v1

    :goto_95
    if-ge v3, p1, :cond_6c

    aget-object v5, p2, v3

    .line 35
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "workshop_[0-9]+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e0

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v6

    if-nez v6, :cond_e0

    .line 36
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_e0

    new-instance v6, Ljava/io/File;

    const-string v7, ".sourceandroid-disabled"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_e0

    new-instance v6, Ljava/io/File;

    const-string v7, "gameinfo.txt"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d0

    goto :goto_e0

    .line 38
    :cond_d0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v5}, Lcom/gmodvr/flat/WorkshopMaps;->title(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0, v2}, Lcom/gmodvr/flat/WorkshopMaps;->collect(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/Map;[I)V

    :cond_e0
    :goto_e0
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 32
    :cond_e3
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot read Workshop folder: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_fa
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    new-instance p1, Lcom/gmodvr/flat/WorkshopMaps$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gmodvr/flat/WorkshopMaps$$ExternalSyntheticLambda0;-><init>()V

    sget-object p2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/gmodvr/flat/WorkshopMaps$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/gmodvr/flat/WorkshopMaps$$ExternalSyntheticLambda1;-><init>()V

    .line 43
    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 42
    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method

.method private static title(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 70
    new-instance v0, Ljava/io/File;

    const-string v1, ".sourceandroid-workshop.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x10000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_47

    .line 73
    :try_start_22
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "title"

    .line 74
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_44} :catch_47

    if-nez v1, :cond_47

    return-object v0

    .line 78
    :catch_47
    :cond_47
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.WorkshopMaps.AnonymousClass1 (com.gmodvr.flat.WorkshopMaps$1)
.class Lcom/gmodvr/flat/WorkshopMaps$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "WorkshopMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/WorkshopMaps;->collect(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/Map;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mapRoot:Ljava/nio/file/Path;

.field final synthetic val$maps:Ljava/util/Map;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$visited:[I


# direct methods
.method public constructor <init>([ILjava/nio/file/Path;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5

    .line 49
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopMaps$1;->val$visited:[I

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopMaps$1;->val$mapRoot:Ljava/nio/file/Path;

    iput-object p3, p0, Lcom/gmodvr/flat/WorkshopMaps$1;->val$maps:Ljava/util/Map;

    iput-object p4, p0, Lcom/gmodvr/flat/WorkshopMaps$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method

.method private visit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopMaps$1;->val$visited:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    const p0, 0x186a0

    if-gt v1, p0, :cond_f

    return-void

    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Too many files to list Workshop maps."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/gmodvr/flat/WorkshopMaps$1;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopMaps$1;->visit()V

    .line 55
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/gmodvr/flat/WorkshopMaps$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopMaps$1;->visit()V

    .line 59
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopMaps$1;->val$mapRoot:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result p2

    if-eqz p2, :cond_40

    const-string p2, ".bsp"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/gmodvr/flat/GameMod;->validMap(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_40

    iget-object p2, p0, Lcom/gmodvr/flat/WorkshopMaps$1;->val$maps:Ljava/util/Map;

    new-instance v0, Lcom/gmodvr/flat/WorkshopMaps$Entry;

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopMaps$1;->val$title:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/WorkshopMaps$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_40
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method

###### Class com.gmodvr.flat.WorkshopMaps.Entry (com.gmodvr.flat.WorkshopMaps$Entry)
.class final Lcom/gmodvr/flat/WorkshopMaps$Entry;
.super Ljava/lang/Object;
.source "WorkshopMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field final map:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopMaps$Entry;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopMaps$Entry;->map:Ljava/lang/String;

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopMaps$$ExternalSyntheticLambda0 (com.gmodvr.flat.WorkshopMaps$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/WorkshopMaps$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/gmodvr/flat/WorkshopMaps$Entry;

    invoke-static {p1}, Lcom/gmodvr/flat/WorkshopMaps;->$r8$lambda$_X_Nwo3aOgaJGd_2jj78AKBHR9o(Lcom/gmodvr/flat/WorkshopMaps$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.WorkshopMaps$$ExternalSyntheticLambda1 (com.gmodvr.flat.WorkshopMaps$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/WorkshopMaps$$ExternalSyntheticLambda1;
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
    check-cast p1, Lcom/gmodvr/flat/WorkshopMaps$Entry;

    invoke-static {p1}, Lcom/gmodvr/flat/WorkshopMaps;->$r8$lambda$Gf5lKxfwMq5VhsfgQ7BMJCym4uE(Lcom/gmodvr/flat/WorkshopMaps$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
