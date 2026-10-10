###### Class com.gmodvr.flat.GameMod (com.gmodvr.flat.GameMod)
.class final Lcom/gmodvr/flat/GameMod;
.super Ljava/lang/Object;
.source "GameMod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/GameMod$Node;,
        Lcom/gmodvr/flat/GameMod$Parser;
    }
.end annotation


# instance fields
.field final directory:Ljava/io/File;

.field private final gameInfo:Lcom/gmodvr/flat/GameMod$Node;

.field final id:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-547deSI-6Xg_TQvRTlRxRLiuTM(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/GameMod;->lambda$runtimeGameInfo$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sjm3QDNMNa1diUUKWnY8gXBCwu0(Lcom/gmodvr/flat/GameMod;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/GameMod;->lambda$discover$0(Lcom/gmodvr/flat/GameMod;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smfind(Ljava/util/List;Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GameMod;->find(Ljava/util/List;Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/io/File;Lcom/gmodvr/flat/GameMod$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    .line 21
    iput-object p2, p0, Lcom/gmodvr/flat/GameMod;->gameInfo:Lcom/gmodvr/flat/GameMod$Node;

    .line 22
    const-string v1, "game"

    invoke-virtual {p2, v1}, Lcom/gmodvr/flat/GameMod$Node;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_1b
    iput-object p2, p0, Lcom/gmodvr/flat/GameMod;->title:Ljava/lang/String;

    .line 25
    :try_start_1d
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_37
    const/16 v1, 0xc

    if-ge v0, v1, :cond_57

    .line 28
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%02x"

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :catch_55
    move-exception p0

    goto :goto_5e

    .line 29
    :cond_57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;
    :try_end_5d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_5d} :catch_55

    return-void

    .line 30
    :goto_5e
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static addArchive(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameMod$Node;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/io/File;

    const-string v1, "pak01_dir.vpk"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 163
    new-instance v0, Lcom/gmodvr/flat/GameMod$Node;

    new-instance v1, Ljava/io/File;

    const-string v2, "pak01.vpk"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/gmodvr/flat/GameMod$Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iput-object p3, v0, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    .line 165
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-void
.end method

.method public static discover(Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/gmodvr/flat/GameContentProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameMod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    new-instance v1, Ljava/io/File;

    const-string v2, "mods"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "custom"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/custom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    filled-new-array {p0, v1, v2, v3}, [Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_4a

    goto :goto_37

    .line 52
    :cond_4a
    new-instance v4, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda1;-><init>()V

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 53
    array-length v4, v3

    const/4 v5, 0x0

    :goto_5a
    if-ge v5, v4, :cond_37

    aget-object v6, v3, v5

    .line 54
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_99

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_71

    goto :goto_99

    .line 55
    :cond_71
    invoke-virtual {v2, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/gmodvr/flat/GameMod;->isDepot(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Z

    move-result v7

    if-eqz v7, :cond_82

    goto :goto_99

    .line 56
    :cond_82
    new-instance v7, Ljava/io/File;

    const-string v8, "gameinfo.txt"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_90

    goto :goto_99

    .line 58
    :cond_90
    :try_start_90
    invoke-static {v6}, Lcom/gmodvr/flat/GameMod;->read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;

    move-result-object v6

    .line 59
    iget-object v7, v6, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_99} :catch_99

    :catch_99
    :cond_99
    :goto_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 65
    :cond_9c
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    new-instance p1, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda2;-><init>()V

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method

.method private static find(Ljava/util/List;Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameMod$Node;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gmodvr/flat/GameMod$Node;"
        }
    .end annotation

    .line 200
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/GameMod$Node;

    iget-object v1, v0, Lcom/gmodvr/flat/GameMod$Node;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isDepot(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Z
    .registers 4

    .line 71
    const-string v0, "platform"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 72
    :cond_a
    iget-object p1, p1, Lcom/gmodvr/flat/GameContentProfile;->depots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/ContentComponent;

    .line 73
    iget-object v0, v0, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$discover$0(Lcom/gmodvr/flat/GameMod;)Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/gmodvr/flat/GameMod;->title:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$runtimeGameInfo$1(Ljava/lang/String;)Z
    .registers 2

    .line 138
    const-string v0, "game"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 35
    new-instance v0, Ljava/io/File;

    const-string v1, "gameinfo.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/gmodvr/flat/GameMod$Parser;

    invoke-static {v0}, Lcom/gmodvr/flat/GameMod;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gmodvr/flat/GameMod$Parser;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Lcom/gmodvr/flat/GameMod$Parser;->parse(ZI)Ljava/util/List;

    move-result-object v0

    .line 37
    const-string v1, "GameInfo"

    invoke-static {v0, v1}, Lcom/gmodvr/flat/GameMod;->find(Ljava/util/List;Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 38
    iget-object v1, v0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    if-eqz v1, :cond_4d

    const-string v1, "FileSystem"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/GameMod$Node;->child(Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 39
    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/GameMod$Node;->child(Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v2

    const-string v3, "SearchPaths"

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/GameMod$Node;->child(Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 40
    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/GameMod$Node;->child(Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/gmodvr/flat/GameMod$Node;->child(Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v1

    iget-object v1, v1, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    if-eqz v1, :cond_4d

    .line 42
    new-instance v1, Lcom/gmodvr/flat/GameMod;

    invoke-direct {v1, p0, v0}, Lcom/gmodvr/flat/GameMod;-><init>(Ljava/io/File;Lcom/gmodvr/flat/GameMod$Node;)V

    return-object v1

    .line 41
    :cond_4d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Mod gameinfo.txt must contain GameInfo / FileSystem / SearchPaths."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_55
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mod folder is unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_29

    .line 196
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "\ufeff"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :cond_29
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing or oversized file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolvePath(Ljava/lang/String;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 170
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 171
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string v2, "|gameinfo_path|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "."

    if-eqz v2, :cond_22

    .line 174
    iget-object p2, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    const/16 p0, 0xf

    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_b7

    .line 177
    :cond_22
    const-string v2, "|all_source_engine_paths|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_30
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c9

    const-string v1, "^[A-Za-z]:.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c9

    .line 180
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_4c

    return-object v0

    .line 181
    :cond_4c
    const-string p1, "/"

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 182
    iget-object v1, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 183
    iget-object p2, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p0, p3, :cond_70

    move-object p0, v3

    goto :goto_b7

    :cond_70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_b7

    .line 185
    :cond_7b
    invoke-static {p1, p3}, Lcom/gmodvr/flat/GameMod;->isDepot(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Z

    move-result p3

    if-eqz p3, :cond_b0

    .line 187
    const-string p0, "platform"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ae

    new-instance p0, Ljava/io/File;

    const-string p3, "portal2_platform"

    invoke-direct {p0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_ae

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b7

    :cond_ae
    :goto_ae
    move-object p0, v0

    goto :goto_b7

    .line 189
    :cond_b0
    iget-object p0, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    goto :goto_ae

    .line 191
    :goto_b7
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_c0

    goto :goto_c1

    :cond_c0
    move-object v3, p0

    :goto_c1
    invoke-direct {p1, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_c9
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported search path in gameinfo.txt: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validMap(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 113
    const-string v0, "[A-Za-z0-9_-]+(?:/[A-Za-z0-9_-]+)*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public maps()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 83
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 84
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    const-string v3, "maplist.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    invoke-static {v1}, Lcom/gmodvr/flat/GameMod;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\R"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_21
    if-ge v4, v2, :cond_35

    aget-object v5, v1, v4

    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-static {v5}, Lcom/gmodvr/flat/GameMod;->validMap(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 89
    :cond_35
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    const-string v2, "maps"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_7c

    .line 90
    array-length v1, p0

    move v2, v3

    :goto_46
    if-ge v2, v1, :cond_7c

    aget-object v4, p0, v2

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_79

    const-string v4, ".bsp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gmodvr/flat/GameMod;->validMap(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 95
    :cond_7c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public runtimeGameInfo(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/gmodvr/flat/GameMod;->gameInfo:Lcom/gmodvr/flat/GameMod$Node;

    invoke-virtual {v0}, Lcom/gmodvr/flat/GameMod$Node;->copy()Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v0

    .line 119
    const-string v1, "FileSystem"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/GameMod$Node;->child(Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v1

    .line 120
    iget v2, p3, Lcom/gmodvr/flat/GameContentProfile;->steamAppId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SteamAppId"

    invoke-virtual {v1, v3, v2}, Lcom/gmodvr/flat/GameMod$Node;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "SearchPaths"

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/GameMod$Node;->child(Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v1

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v3, Lcom/gmodvr/flat/GameMod$Node;

    const-string v4, "Mod+Mod_Write+Default_Write_Path"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v4, p2}, Lcom/gmodvr/flat/GameMod$Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p2, v1, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_36
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/GameMod$Node;

    .line 127
    iget-object v5, v3, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    if-nez v5, :cond_bb

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v6, v3, Lcom/gmodvr/flat/GameMod$Node;->key:Ljava/lang/String;

    const-string v7, "\\+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_55
    if-ge v4, v7, :cond_81

    aget-object v8, v6, v4

    .line 130
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 131
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 132
    const-string v10, "gamebin"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7e

    const-string v10, "executable_path"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7e

    const-string v10, "write"

    .line 133
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7e

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 135
    :cond_81
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_88

    goto :goto_36

    .line 136
    :cond_88
    iget-object v4, v3, Lcom/gmodvr/flat/GameMod$Node;->value:Ljava/lang/String;

    invoke-direct {p0, v4, p1, p3}, Lcom/gmodvr/flat/GameMod;->resolvePath(Ljava/lang/String;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object v4

    .line 137
    const-string v6, "+"

    invoke-static {v6, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 139
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    invoke-static {v2, v6, v5, v7}, Lcom/gmodvr/flat/GameMod;->addArchive(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 140
    :cond_ad
    new-instance v5, Lcom/gmodvr/flat/GameMod$Node;

    invoke-direct {v5, v6, v4}, Lcom/gmodvr/flat/GameMod$Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v3, v3, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    iput-object v3, v5, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    .line 142
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_36

    .line 127
    :cond_bb
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid SearchPaths block."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_c3
    iget-object p2, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    const-string v3, "Game+Mod"

    const-string v5, ""

    invoke-static {v2, v3, p2, v5}, Lcom/gmodvr/flat/GameMod;->addArchive(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 146
    new-instance p2, Lcom/gmodvr/flat/GameMod$Node;

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v3, p0}, Lcom/gmodvr/flat/GameMod$Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object p0, Lcom/gmodvr/flat/GameContentProfile;->PORTAL2:Lcom/gmodvr/flat/GameContentProfile;

    if-ne p3, p0, :cond_f1

    .line 148
    sget-object p0, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_UPDATE:Lcom/gmodvr/flat/ContentComponent;

    sget-object p2, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_DLC2:Lcom/gmodvr/flat/ContentComponent;

    sget-object p3, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_DLC1:Lcom/gmodvr/flat/ContentComponent;

    sget-object v3, Lcom/gmodvr/flat/ContentComponent;->PORTAL2:Lcom/gmodvr/flat/ContentComponent;

    sget-object v6, Lcom/gmodvr/flat/ContentComponent;->PORTAL2_PLATFORM:Lcom/gmodvr/flat/ContentComponent;

    filled-new-array {p0, p2, p3, v3, v6}, [Lcom/gmodvr/flat/ContentComponent;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_f3

    .line 150
    :cond_f1
    iget-object p0, p3, Lcom/gmodvr/flat/GameContentProfile;->depots:Ljava/util/List;

    .line 151
    :goto_f3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_133

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmodvr/flat/ContentComponent;

    .line 152
    new-instance p3, Ljava/io/File;

    iget-object v3, p2, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    invoke-direct {p3, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    iget-object p2, p2, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    const-string v3, "portal2_platform"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_121

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_121

    new-instance p3, Ljava/io/File;

    const-string p2, "platform"

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    :cond_121
    const-string p2, "Game"

    invoke-static {v2, p2, p3, v5}, Lcom/gmodvr/flat/GameMod;->addArchive(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 155
    new-instance v3, Lcom/gmodvr/flat/GameMod$Node;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, p2, p3}, Lcom/gmodvr/flat/GameMod$Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f7

    .line 157
    :cond_133
    iput-object v2, v1, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    .line 158
    invoke-virtual {v0, v4}, Lcom/gmodvr/flat/GameMod$Node;->serialize(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public suggestedMap()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/gmodvr/flat/GameMod;->gameInfo:Lcom/gmodvr/flat/GameMod$Node;

    const-string v1, "startmap"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/GameMod$Node;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/gmodvr/flat/GameMod;->validMap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    .line 101
    :cond_f
    invoke-virtual {p0}, Lcom/gmodvr/flat/GameMod;->maps()Ljava/util/List;

    move-result-object v0

    .line 102
    const-string v1, "st_a1_tramride"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    .line 103
    :cond_1c
    const-string v1, "sp_a1_tramride"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    return-object v1

    .line 104
    :cond_25
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    const-string v2, "cfg/chapter1.cfg"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_58

    .line 106
    const-string p0, "(?m)^\\s*map\\s+\"?([A-Za-z0-9_/-]+)"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-static {v1}, Lcom/gmodvr/flat/GameMod;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gmodvr/flat/GameMod;->validMap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v2, :cond_66

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_68

    :cond_66
    const-string p0, ""

    :goto_68
    return-object p0
.end method

.method public userDirectory(Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;
    .registers 6

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user/mods/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.gmodvr.flat.GameMod.Node (com.gmodvr.flat.GameMod$Node)
.class final Lcom/gmodvr/flat/GameMod$Node;
.super Ljava/lang/Object;
.source "GameMod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GameMod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation


# instance fields
.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameMod$Node;",
            ">;"
        }
    .end annotation
.end field

.field condition:Ljava/lang/String;

.field key:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0PZkCnm0b4H1q291KCHMFSS0H2Q(Ljava/lang/String;Lcom/gmodvr/flat/GameMod$Node;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GameMod$Node;->lambda$set$0(Ljava/lang/String;Lcom/gmodvr/flat/GameMod$Node;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/gmodvr/flat/GameMod$Node;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/GameMod$Node;->value:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$set$0(Ljava/lang/String;Lcom/gmodvr/flat/GameMod$Node;)Z
    .registers 2

    .line 211
    iget-object p1, p1, Lcom/gmodvr/flat/GameMod$Node;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/gmodvr/flat/GameMod$Node$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gmodvr/flat/GameMod$Node$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 232
    :cond_2c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unsupported quote or control character in gameinfo.txt."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;
    .registers 2

    .line 208
    iget-object p0, p0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GameMod;->-$$Nest$smfind(Ljava/util/List;Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public copy()Lcom/gmodvr/flat/GameMod$Node;
    .registers 4

    .line 215
    new-instance v0, Lcom/gmodvr/flat/GameMod$Node;

    iget-object v1, p0, Lcom/gmodvr/flat/GameMod$Node;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmodvr/flat/GameMod$Node;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/GameMod$Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    iput-object v1, v0, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    if-eqz v1, :cond_34

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/GameMod$Node;

    iget-object v2, v0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    invoke-virtual {v1}, Lcom/gmodvr/flat/GameMod$Node;->copy()Lcom/gmodvr/flat/GameMod$Node;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_34
    return-object v0
.end method

.method public serialize(I)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/String;

    new-array v1, p1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gmodvr/flat/GameMod$Node;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/gmodvr/flat/GameMod$Node;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    const-string v3, "\n"

    const-string v4, " "

    if-nez v2, :cond_44

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gmodvr/flat/GameMod$Node;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/gmodvr/flat/GameMod$Node;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_97

    .line 224
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gmodvr/flat/GameMod$Node;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v5, v1}, Lcom/gmodvr/flat/GameMod$Node;->serialize(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_61

    .line 226
    :cond_83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    :goto_97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_aa

    const-string p0, ""

    goto :goto_bb

    :cond_aa
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_bb
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    new-instance v1, Lcom/gmodvr/flat/GameMod$Node$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/gmodvr/flat/GameMod$Node$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 212
    iget-object p0, p0, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    new-instance v0, Lcom/gmodvr/flat/GameMod$Node;

    invoke-direct {v0, p1, p2}, Lcom/gmodvr/flat/GameMod$Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public value(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 209
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/GameMod$Node;->child(Ljava/lang/String;)Lcom/gmodvr/flat/GameMod$Node;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod$Node;->value:Ljava/lang/String;

    if-nez p0, :cond_c

    :cond_a
    const-string p0, ""

    :cond_c
    return-object p0
.end method

###### Class com.gmodvr.flat.GameMod$Node$$ExternalSyntheticLambda0 (com.gmodvr.flat.GameMod$Node$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/GameMod$Node$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lcom/gmodvr/flat/GameMod$Node$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/GameMod$Node$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/gmodvr/flat/GameMod$Node;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/GameMod$Node;->$r8$lambda$0PZkCnm0b4H1q291KCHMFSS0H2Q(Ljava/lang/String;Lcom/gmodvr/flat/GameMod$Node;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.GameMod$Node$$ExternalSyntheticLambda1 (com.gmodvr.flat.GameMod$Node$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/GameMod$Node$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 2

    .line 0
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.GameMod.Parser (com.gmodvr.flat.GameMod$Parser)
.class final Lcom/gmodvr/flat/GameMod$Parser;
.super Ljava/lang/Object;
.source "GameMod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GameMod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parser"
.end annotation


# instance fields
.field cursor:I

.field pending:Ljava/lang/String;

.field final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->pending:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iput-object v1, p0, Lcom/gmodvr/flat/GameMod$Parser;->pending:Ljava/lang/String;

    return-object v0

    .line 262
    :cond_8
    :goto_8
    iget v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    iget-object v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_77

    .line 263
    iget-object v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    iget v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    goto :goto_8

    .line 264
    :cond_27
    iget-object v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    const-string v2, "//"

    iget v3, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 265
    :goto_33
    iget v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    iget-object v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    iget-object v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    iget v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    goto :goto_33

    .line 268
    :cond_50
    iget-object v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    const-string v2, "/*"

    iget v3, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 269
    iget-object v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    iget v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    add-int/lit8 v2, v2, 0x2

    const-string v3, "*/"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_6f

    add-int/lit8 v0, v0, 0x2

    .line 271
    iput v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    goto :goto_8

    .line 270
    :cond_6f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unclosed gameinfo comment."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_77
    iget v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    iget-object v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_82

    return-object v1

    .line 276
    :cond_82
    iget-object v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    iget v1, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_136

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_98

    goto/16 :goto_136

    :cond_98
    const/16 v1, 0x5b

    const/16 v2, 0x22

    if-eq v0, v2, :cond_dd

    if-ne v0, v1, :cond_a1

    goto :goto_dd

    .line 286
    :cond_a1
    iget v0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 287
    :goto_a5
    iget v1, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    iget-object v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_d4

    iget-object v1, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    iget v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_d4

    iget-object v1, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    iget v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, "{}[]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_d4

    iget v1, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    goto :goto_a5

    .line 289
    :cond_d4
    iget-object v1, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    iget p0, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 279
    :cond_dd
    :goto_dd
    iget v3, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    if-ne v0, v2, :cond_e2

    goto :goto_e4

    :cond_e2
    const/16 v2, 0x5d

    .line 281
    :goto_e4
    iget v4, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    iget-object v5, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_ff

    iget-object v4, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    iget v5, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_ff

    iget v4, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    goto :goto_e4

    .line 282
    :cond_ff
    iget v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    iget-object v4, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_12e

    .line 283
    iget-object v2, p0, Lcom/gmodvr/flat/GameMod$Parser;->source:Ljava/lang/String;

    iget v4, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/gmodvr/flat/GameMod$Parser;->cursor:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-ne v0, v1, :cond_12d

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_12d
    return-object p0

    .line 282
    :cond_12e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unclosed gameinfo token."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 277
    :cond_136
    :goto_136
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parse(ZI)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameMod$Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p2, v0, :cond_96

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    :goto_9
    invoke-virtual {p0}, Lcom/gmodvr/flat/GameMod$Parser;->next()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 246
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz p1, :cond_1a

    return-object v0

    :cond_1a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected } in gameinfo.txt."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_22
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 248
    invoke-virtual {p0}, Lcom/gmodvr/flat/GameMod$Parser;->next()Ljava/lang/String;

    move-result-object v3

    .line 249
    const-string v4, "{"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    if-eqz v3, :cond_6c

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 250
    new-instance v2, Lcom/gmodvr/flat/GameMod$Node;

    invoke-direct {v2, v1, v3}, Lcom/gmodvr/flat/GameMod$Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v1, 0x0

    iput-object v1, v2, Lcom/gmodvr/flat/GameMod$Node;->value:Ljava/lang/String;

    const/4 v1, 0x1

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/gmodvr/flat/GameMod$Parser;->parse(ZI)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/gmodvr/flat/GameMod$Node;->children:Ljava/util/List;

    .line 252
    :cond_55
    invoke-virtual {p0}, Lcom/gmodvr/flat/GameMod$Parser;->next()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 253
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    iput-object v1, v2, Lcom/gmodvr/flat/GameMod$Node;->condition:Ljava/lang/String;

    goto :goto_68

    .line 254
    :cond_66
    iput-object v1, p0, Lcom/gmodvr/flat/GameMod$Parser;->pending:Ljava/lang/String;

    .line 255
    :goto_68
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 249
    :cond_6c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete gameinfo.txt."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_74
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "External gameinfo directives are not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    if-nez p1, :cond_8e

    return-object v0

    .line 257
    :cond_8e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unclosed block in gameinfo.txt."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 242
    :cond_96
    new-instance p0, Ljava/io/IOException;

    const-string p1, "gameinfo.txt is nested too deeply."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.gmodvr.flat.GameMod$$ExternalSyntheticLambda0 (com.gmodvr.flat.GameMod$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda0;
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

    invoke-static {p1}, Lcom/gmodvr/flat/GameMod;->$r8$lambda$-547deSI-6Xg_TQvRTlRxRLiuTM(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.GameMod$$ExternalSyntheticLambda2 (com.gmodvr.flat.GameMod$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/GameMod$$ExternalSyntheticLambda2;
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
    check-cast p1, Lcom/gmodvr/flat/GameMod;

    invoke-static {p1}, Lcom/gmodvr/flat/GameMod;->$r8$lambda$Sjm3QDNMNa1diUUKWnY8gXBCwu0(Lcom/gmodvr/flat/GameMod;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
