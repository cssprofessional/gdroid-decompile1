###### Class com.gmodvr.flat.SteamDownloads (com.gmodvr.flat.SteamDownloads)
.class final Lcom/gmodvr/flat/SteamDownloads;
.super Ljava/lang/Object;
.source "SteamDownloads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/SteamDownloads$Progress;,
        Lcom/gmodvr/flat/SteamDownloads$Planned;,
        Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;
    }
.end annotation


# static fields
.field private static final RESERVE:J = 0x20000000L


# instance fields
.field private done:J

.field private final progress:Lcom/gmodvr/flat/SteamDownloads$Progress;

.field private final steam:Lcom/gmodvr/flat/SteamSession;

.field private total:J


# direct methods
.method public static synthetic $r8$lambda$89blJHRNwkMk8x40EpUVUJ3uQxA(Lcom/gmodvr/flat/SteamDownloads;Lcom/gmodvr/flat/SteamDownloads$Planned;Lin/dragonbra/javasteam/types/ChunkData;)[B
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/SteamDownloads;->lambda$download$1(Lcom/gmodvr/flat/SteamDownloads$Planned;Lin/dragonbra/javasteam/types/ChunkData;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AGxj5d8YLO2ChQxbTMzwHJfmP4Y(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamDownloads;->lambda$game$0(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KBOcxScn3PdNJEBzpxAU0zCOXTc(Lcom/gmodvr/flat/SteamDownloads;JLjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/SteamDownloads;->lambda$download$2(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U50slmYBtYRuYt7LtL1nz3vsYuk(Lcom/gmodvr/flat/SteamDownloads;[JLjava/lang/String;J)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/SteamDownloads;->lambda$item$3([JLjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetsteam(Lcom/gmodvr/flat/SteamDownloads;)Lcom/gmodvr/flat/SteamSession;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    return-object p0
.end method

.method public constructor <init>(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloads$Progress;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    .line 21
    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloads;->progress:Lcom/gmodvr/flat/SteamDownloads$Progress;

    return-void
.end method

.method private download(Ljava/util/Collection;Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gmodvr/flat/SteamDownloads$Planned;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-static {p2}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/gmodvr/flat/SteamDownloads;->done:J

    iput-wide v0, p0, Lcom/gmodvr/flat/SteamDownloads;->total:J

    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/SteamDownloads$Planned;

    .line 75
    iget-wide v4, p0, Lcom/gmodvr/flat/SteamDownloads;->total:J

    iget-object v6, v3, Lcom/gmodvr/flat/SteamDownloads$Planned;->file:Lin/dragonbra/javasteam/types/FileData;

    invoke-virtual {v6}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/gmodvr/flat/SteamDownloads;->total:J

    .line 76
    iget-object v4, v3, Lcom/gmodvr/flat/SteamDownloads$Planned;->name:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v6, v3, Lcom/gmodvr/flat/SteamDownloads$Planned;->file:Lin/dragonbra/javasteam/types/FileData;

    invoke-virtual {v6}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    .line 78
    :cond_41
    iget-object v3, v3, Lcom/gmodvr/flat/SteamDownloads$Planned;->file:Lin/dragonbra/javasteam/types/FileData;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    goto :goto_d

    .line 80
    :cond_4c
    invoke-virtual {p2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x20000000

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_a4

    .line 82
    new-instance v0, Lcom/gmodvr/flat/SteamTransfer;

    invoke-direct {v0}, Lcom/gmodvr/flat/SteamTransfer;-><init>()V

    .line 83
    :try_start_5d
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/SteamDownloads$Planned;

    .line 85
    iget-object v3, p0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {v3}, Lcom/gmodvr/flat/SteamSession;->check()V

    .line 86
    new-instance v3, Lcom/gmodvr/flat/SteamTransfer$Request;

    iget-object v4, v2, Lcom/gmodvr/flat/SteamDownloads$Planned;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/gmodvr/flat/SteamDownloads$Planned;->file:Lin/dragonbra/javasteam/types/FileData;

    new-instance v6, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v2}, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/SteamDownloads;Lcom/gmodvr/flat/SteamDownloads$Planned;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/gmodvr/flat/SteamTransfer$Request;-><init>(Ljava/lang/String;Lin/dragonbra/javasteam/types/FileData;Lcom/gmodvr/flat/SteamTransfer$Source;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    :catchall_8d
    move-exception p0

    goto :goto_9b

    .line 88
    :cond_8f
    new-instance p1, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/SteamDownloads;)V

    invoke-virtual {v0, p2, v1, p1}, Lcom/gmodvr/flat/SteamTransfer;->download(Ljava/io/File;Ljava/lang/Iterable;Lcom/gmodvr/flat/SteamTransfer$Progress;)V
    :try_end_97
    .catchall {:try_start_5d .. :try_end_97} :catchall_8d

    .line 92
    invoke-virtual {v0}, Lcom/gmodvr/flat/SteamTransfer;->close()V

    return-void

    .line 82
    :goto_9b
    :try_start_9b
    invoke-virtual {v0}, Lcom/gmodvr/flat/SteamTransfer;->close()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_9f

    goto :goto_a3

    :catchall_9f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a3
    throw p0

    .line 81
    :cond_a4
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not enough free storage. The download needs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " MiB more, plus 512 MiB free."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$download$1(Lcom/gmodvr/flat/SteamDownloads$Planned;Lin/dragonbra/javasteam/types/ChunkData;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    iget-object p1, p1, Lcom/gmodvr/flat/SteamDownloads$Planned;->depot:Lcom/gmodvr/flat/SteamSession$Depot;

    invoke-virtual {p0, p1, p2}, Lcom/gmodvr/flat/SteamSession;->chunk(Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/types/ChunkData;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$download$2(JLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {v0}, Lcom/gmodvr/flat/SteamSession;->check()V

    iget-wide v0, p0, Lcom/gmodvr/flat/SteamDownloads;->done:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/gmodvr/flat/SteamDownloads;->done:J

    .line 90
    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloads;->progress:Lcom/gmodvr/flat/SteamDownloads$Progress;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Downloading "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/gmodvr/flat/SteamDownloads;->done:J

    iget-wide v6, p0, Lcom/gmodvr/flat/SteamDownloads;->total:J

    invoke-interface/range {v2 .. v7}, Lcom/gmodvr/flat/SteamDownloads$Progress;->update(Ljava/lang/String;JJ)V

    return-void
.end method

.method private static synthetic lambda$game$0(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)I
    .registers 3

    .line 46
    const-string v0, "config"

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p1

    invoke-static {p1}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$item$3([JLjava/lang/String;J)V
    .registers 14

    const/4 v0, 0x0

    .line 188
    aget-wide v1, p1, v0

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide p3

    aput-wide p3, p1, v0

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p3

    const/4 v1, 0x1

    .line 190
    aget-wide v2, p1, v1

    sub-long v2, p3, v2

    const-wide/32 v4, 0xee6b280

    cmp-long v2, v2, v4

    if-ltz v2, :cond_25

    .line 191
    aput-wide p3, p1, v1

    .line 192
    iget-object v3, p0, Lcom/gmodvr/flat/SteamDownloads;->progress:Lcom/gmodvr/flat/SteamDownloads$Progress;

    aget-wide v5, p1, v0

    const-wide/16 v7, 0x0

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Lcom/gmodvr/flat/SteamDownloads$Progress;->update(Ljava/lang/String;JJ)V

    :cond_25
    return-void
.end method

.method private static prune(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 249
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_57

    aget-object v2, p1, v1

    .line 250
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-static {p0, v3}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 252
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 253
    invoke-static {p0, v2, p2}, Lcom/gmodvr/flat/SteamDownloads;->prune(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V

    .line 254
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 255
    array-length v3, v3

    if-nez v3, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    goto :goto_54

    .line 256
    :cond_41
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_57
    return-void

    .line 248
    :cond_58
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read Steam staging files"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private webFile(Ljava/lang/String;Ljava/io/File;J)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 216
    invoke-static/range {p1 .. p1}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_190

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_190

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_190

    const-string v3, ".steamusercontent.com"

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v3, ".steamcontent.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v3, ".steamstatic.com"

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v3, ".akamaihd.net"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_190

    :cond_4a
    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-lez v4, :cond_188

    const-wide v4, 0x1900000000L

    cmp-long v4, p3, v4

    if-gtz v4, :cond_188

    .line 223
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x20000000

    sub-long/2addr v4, v6

    cmp-long v4, p3, v4

    if-gtz v4, :cond_180

    .line 225
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".part"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 226
    iget-object v5, v0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    iget-object v5, v5, Lcom/gmodvr/flat/SteamSession;->http:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v7}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v5

    .line 227
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v7, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v5, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 228
    :try_start_b9
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_159

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_159

    .line 229
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    cmp-long v5, v7, v2

    if-ltz v5, :cond_e2

    cmp-long v5, v7, p3

    if-nez v5, :cond_d6

    goto :goto_e2

    .line 230
    :cond_d6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Workshop download size differs from Steam metadata"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_de
    move-exception v0

    move-object v2, v0

    goto/16 :goto_174

    .line 232
    :cond_e2
    :goto_e2
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_ea
    .catchall {:try_start_b9 .. :try_end_ea} :catchall_de

    :try_start_ea
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ef
    .catchall {:try_start_ea .. :try_end_ef} :catchall_140

    const/high16 v8, 0x20000

    .line 233
    :try_start_f1
    new-array v8, v8, [B

    .line 234
    :goto_f3
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11e

    .line 235
    iget-object v10, v0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {v10}, Lcom/gmodvr/flat/SteamSession;->check()V

    int-to-long v10, v9

    add-long/2addr v2, v10

    cmp-long v10, v2, p3

    if-gtz v10, :cond_116

    .line 237
    invoke-virtual {v7, v8, v6, v9}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v12, v0, Lcom/gmodvr/flat/SteamDownloads;->progress:Lcom/gmodvr/flat/SteamDownloads$Progress;

    const-string v13, "Downloading Workshop file"

    move-wide v14, v2

    move-wide/from16 v16, p3

    invoke-interface/range {v12 .. v17}, Lcom/gmodvr/flat/SteamDownloads$Progress;->update(Ljava/lang/String;JJ)V

    goto :goto_f3

    :catchall_113
    move-exception v0

    move-object v2, v0

    goto :goto_143

    .line 236
    :cond_116
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Workshop download exceeded its expected size"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_11e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_125
    .catchall {:try_start_f1 .. :try_end_125} :catchall_113

    .line 240
    :try_start_125
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_140

    :try_start_128
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_de

    cmp-long v0, v2, p3

    if-nez v0, :cond_138

    .line 242
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    move-object/from16 v0, p2

    .line 243
    invoke-static {v4, v0}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V

    return-void

    .line 241
    :cond_138
    :try_start_138
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Workshop download was truncated"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_140
    .catchall {:try_start_138 .. :try_end_140} :catchall_de

    :catchall_140
    move-exception v0

    move-object v2, v0

    goto :goto_14d

    .line 232
    :goto_143
    :try_start_143
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_147

    goto :goto_14c

    :catchall_147
    move-exception v0

    move-object v3, v0

    :try_start_149
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14c
    throw v2
    :try_end_14d
    .catchall {:try_start_149 .. :try_end_14d} :catchall_140

    :goto_14d
    if-eqz v5, :cond_158

    :try_start_14f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_152
    .catchall {:try_start_14f .. :try_end_152} :catchall_153

    goto :goto_158

    :catchall_153
    move-exception v0

    move-object v3, v0

    :try_start_155
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_158
    :goto_158
    throw v2

    .line 228
    :cond_159
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Workshop server returned HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_174
    .catchall {:try_start_155 .. :try_end_174} :catchall_de

    :goto_174
    if-eqz v1, :cond_17f

    .line 227
    :try_start_176
    invoke-virtual {v1}, Lokhttp3/Response;->close()V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_17a

    goto :goto_17f

    :catchall_17a
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17f
    :goto_17f
    throw v2

    .line 224
    :cond_180
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough storage for the Workshop file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_188
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Workshop file has an invalid size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_190
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Steam returned an unsupported Workshop download address"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public game(Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/GameContentProfile;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/gmodvr/flat/SteamCatalog;->appId(Lcom/gmodvr/flat/GameContentProfile;)I

    move-result v5

    .line 41
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloads;->progress:Lcom/gmodvr/flat/SteamDownloads$Progress;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading Steam depots for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\u2026"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/gmodvr/flat/SteamDownloads$Progress;->update(Ljava/lang/String;JJ)V

    .line 42
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-static {v1, v4, v6}, Lcom/gmodvr/flat/SteamInstallBridge;->stagedDepots(Lcom/gmodvr/flat/GameContentProfile;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 44
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {v10, v5}, Lcom/gmodvr/flat/SteamSession;->app(I)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v10

    const-string v11, "depots"

    invoke-virtual {v10, v11}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v10

    invoke-virtual {v10}, Lin/dragonbra/javasteam/types/KeyValue;->getChildren()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    new-instance v10, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda4;

    invoke-direct {v10, v2}, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 47
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_62
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_125

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lin/dragonbra/javasteam/types/KeyValue;

    .line 48
    invoke-virtual {v10}, Lin/dragonbra/javasteam/types/KeyValue;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_121

    invoke-virtual {v10}, Lin/dragonbra/javasteam/types/KeyValue;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "[0-9]+"

    invoke-virtual {v11, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_121

    invoke-static {v10, v2}, Lcom/gmodvr/flat/SteamCatalog;->depotMatches(Lin/dragonbra/javasteam/types/KeyValue;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_121

    .line 49
    invoke-static {v1, v10}, Lcom/gmodvr/flat/SteamCatalog;->proxyWanted(Lcom/gmodvr/flat/GameContentProfile;Lin/dragonbra/javasteam/types/KeyValue;)Z

    move-result v11

    if-nez v11, :cond_8d

    goto :goto_62

    .line 50
    :cond_8d
    invoke-virtual {v10}, Lin/dragonbra/javasteam/types/KeyValue;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 51
    iget-object v13, v0, Lcom/gmodvr/flat/SteamDownloads;->progress:Lcom/gmodvr/flat/SteamDownloads$Progress;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reading Steam depot "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-interface/range {v13 .. v18}, Lcom/gmodvr/flat/SteamDownloads$Progress;->update(Ljava/lang/String;JJ)V

    .line 52
    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    const-wide/16 v13, 0x0

    invoke-virtual {v11, v5, v10, v13, v14}, Lcom/gmodvr/flat/SteamSession;->depot(IIJ)Lcom/gmodvr/flat/SteamSession$Depot;

    move-result-object v10

    if-nez v10, :cond_bd

    goto :goto_62

    .line 54
    :cond_bd
    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {v11, v10}, Lcom/gmodvr/flat/SteamSession;->manifest(Lcom/gmodvr/flat/SteamSession$Depot;)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object v11

    .line 55
    invoke-virtual {v11}, Lin/dragonbra/javasteam/types/DepotManifest;->getFiles()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_cb
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_121

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lin/dragonbra/javasteam/types/FileData;

    .line 56
    invoke-virtual {v13}, Lin/dragonbra/javasteam/types/FileData;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/gmodvr/flat/SteamCatalog;->gamePath(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_ed

    .line 57
    invoke-virtual {v13}, Lin/dragonbra/javasteam/types/FileData;->getFlags()Ljava/util/EnumSet;

    move-result-object v15

    sget-object v2, Lin/dragonbra/javasteam/enums/EDepotFileFlag;->Directory:Lin/dragonbra/javasteam/enums/EDepotFileFlag;

    invoke-virtual {v15, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    :cond_ed
    :goto_ed
    move-object/from16 v2, p2

    goto :goto_cb

    .line 58
    :cond_f0
    sget-object v2, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v1, v2, :cond_fb

    invoke-static {v4, v14}, Lcom/gmodvr/flat/SteamCatalog;->providedByHalfLife2(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fb

    goto :goto_ed

    .line 59
    :cond_fb
    invoke-virtual {v13}, Lin/dragonbra/javasteam/types/FileData;->getFlags()Ljava/util/EnumSet;

    move-result-object v2

    sget-object v15, Lin/dragonbra/javasteam/enums/EDepotFileFlag;->Symlink:Lin/dragonbra/javasteam/enums/EDepotFileFlag;

    invoke-virtual {v2, v15}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    .line 60
    invoke-static {v13}, Lcom/gmodvr/flat/SteamTransfer;->validate(Lin/dragonbra/javasteam/types/FileData;)V

    .line 61
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    new-instance v15, Lcom/gmodvr/flat/SteamDownloads$Planned;

    invoke-direct {v15, v10, v13, v14}, Lcom/gmodvr/flat/SteamDownloads$Planned;-><init>(Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/types/FileData;Ljava/lang/String;)V

    invoke-interface {v8, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ed

    .line 59
    :cond_119
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Steam content contains an unsupported symbolic link"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_121
    move-object/from16 v2, p2

    goto/16 :goto_62

    .line 64
    :cond_125
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 65
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/gmodvr/flat/SteamDownloads;->download(Ljava/util/Collection;Ljava/io/File;)V

    .line 66
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v3, v3, v0}, Lcom/gmodvr/flat/SteamDownloads;->prune(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V

    return-object v6

    .line 64
    :cond_13a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Steam returned no game files for this profile"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public item(Lcom/gmodvr/flat/GameContentProfile;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;Ljava/io/File;Lorg/json/JSONArray;)Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 148
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getPublishedfileid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v6

    .line 149
    iget-object v7, v0, Lcom/gmodvr/flat/SteamDownloads;->progress:Lcom/gmodvr/flat/SteamDownloads$Progress;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading Workshop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/gmodvr/flat/SteamDownloads$Progress;->update(Ljava/lang/String;JJ)V

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 151
    invoke-static {v4}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-wide/16 v7, 0x0

    if-nez v5, :cond_80

    .line 153
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getFilename()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5e

    const-string v5, "content.bin"

    .line 155
    :cond_5e
    invoke-static {v5}, Lcom/gmodvr/flat/SteamFiles;->relative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-static {v4, v5}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 157
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getFileUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getFileSize()J

    move-result-wide v11

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/gmodvr/flat/SteamDownloads;->webFile(Ljava/lang/String;Ljava/io/File;J)V

    .line 158
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v4, v5}, Lcom/gmodvr/flat/SteamDownloads;->prune(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V

    goto/16 :goto_133

    .line 160
    :cond_80
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getHcontentFile()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-eqz v5, :cond_23e

    const-wide/16 v11, -0x1

    cmp-long v5, v9, v11

    if-eqz v5, :cond_23e

    .line 162
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getConsumerAppid()I

    move-result v5

    .line 163
    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {v11, v5}, Lcom/gmodvr/flat/SteamSession;->app(I)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v11

    const-string v12, "depots"

    invoke-virtual {v11, v12}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v11

    const-string v12, "workshopdepot"

    invoke-virtual {v11, v12}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v11

    invoke-static {v11}, Lcom/gmodvr/flat/SteamCatalog;->value(Lin/dragonbra/javasteam/types/KeyValue;)Ljava/lang/String;

    move-result-object v11

    .line 164
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b0

    move v11, v5

    goto :goto_b4

    :cond_b0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 165
    :goto_b4
    iget-object v12, v0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {v12, v5, v11, v9, v10}, Lcom/gmodvr/flat/SteamSession;->depot(IIJ)Lcom/gmodvr/flat/SteamSession$Depot;

    move-result-object v5

    .line 166
    iget-object v9, v0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {v9, v5}, Lcom/gmodvr/flat/SteamSession;->manifest(Lcom/gmodvr/flat/SteamSession$Depot;)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object v9

    .line 167
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 168
    invoke-virtual {v9}, Lin/dragonbra/javasteam/types/DepotManifest;->getFiles()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_cd
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lin/dragonbra/javasteam/types/FileData;

    .line 169
    invoke-virtual {v11}, Lin/dragonbra/javasteam/types/FileData;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/gmodvr/flat/SteamFiles;->relative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 170
    invoke-virtual {v11}, Lin/dragonbra/javasteam/types/FileData;->getFlags()Ljava/util/EnumSet;

    move-result-object v13

    sget-object v14, Lin/dragonbra/javasteam/enums/EDepotFileFlag;->Directory:Lin/dragonbra/javasteam/enums/EDepotFileFlag;

    invoke-virtual {v13, v14}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ee

    goto :goto_cd

    .line 171
    :cond_ee
    invoke-virtual {v11}, Lin/dragonbra/javasteam/types/FileData;->getFlags()Ljava/util/EnumSet;

    move-result-object v13

    sget-object v14, Lin/dragonbra/javasteam/enums/EDepotFileFlag;->Symlink:Lin/dragonbra/javasteam/enums/EDepotFileFlag;

    invoke-virtual {v13, v14}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_117

    .line 172
    invoke-static {v11}, Lcom/gmodvr/flat/SteamTransfer;->validate(Lin/dragonbra/javasteam/types/FileData;)V

    .line 173
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/gmodvr/flat/SteamDownloads$Planned;

    invoke-direct {v14, v5, v11, v12}, Lcom/gmodvr/flat/SteamDownloads$Planned;-><init>(Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/types/FileData;Ljava/lang/String;)V

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_10f

    goto :goto_cd

    .line 174
    :cond_10f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate Workshop content path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_117
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Workshop symbolic links are unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_11f
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_236

    .line 177
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/gmodvr/flat/SteamDownloads;->download(Ljava/util/Collection;Ljava/io/File;)V

    .line 178
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v4, v5}, Lcom/gmodvr/flat/SteamDownloads;->prune(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V

    .line 180
    :goto_133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unpacking Workshop: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    iget-object v10, v0, Lcom/gmodvr/flat/SteamDownloads;->progress:Lcom/gmodvr/flat/SteamDownloads$Progress;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v11, v5

    invoke-interface/range {v10 .. v15}, Lcom/gmodvr/flat/SteamDownloads$Progress;->update(Ljava/lang/String;JJ)V

    .line 182
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/prepared"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 183
    invoke-static {v14}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    .line 186
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v11, 0x0

    aput-wide v7, v2, v11

    const/4 v7, 0x1

    aput-wide v9, v2, v7

    .line 187
    new-instance v15, Lcom/gmodvr/flat/SteamWorkshop;

    new-instance v7, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v2, v5}, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/SteamDownloads;[JLjava/lang/String;)V

    invoke-direct {v15, v1, v7}, Lcom/gmodvr/flat/SteamWorkshop;-><init>(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/function/LongConsumer;)V

    .line 195
    invoke-virtual {v15, v4, v14}, Lcom/gmodvr/flat/SteamWorkshop;->unpack(Ljava/io/File;Ljava/io/File;)V

    .line 197
    invoke-static {v4}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    .line 199
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v1, v0, :cond_1ed

    .line 200
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTagsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_198
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Tag;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Tag;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_198

    .line 202
    :cond_1ac
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTimeUpdated()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v8

    .line 203
    invoke-virtual {v15}, Lcom/gmodvr/flat/SteamWorkshop;->gmaInfo()Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 202
    invoke-static/range {v6 .. v13}, Lcom/gmodvr/flat/GmodAddons;->metadata(Ljava/lang/String;Ljava/lang/String;JLjava/util/Collection;Lcom/gmodvr/flat/GmaArchive$Info;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 204
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 205
    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getChildrenList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child;

    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails$Child;->getPublishedfileid()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1cf

    .line 206
    :cond_1e7
    const-string v4, "required"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_20c

    .line 208
    :cond_1ed
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTimeUpdated()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_20c
    if-eqz v3, :cond_219

    .line 210
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_219

    const-string v2, "collections"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_219
    new-instance v2, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;

    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getPublishedfileid()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;->getTitle()Ljava/lang/String;

    move-result-object v13

    .line 212
    sget-object v3, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v1, v3, :cond_22e

    invoke-virtual {v15}, Lcom/gmodvr/flat/SteamWorkshop;->checksums()Ljava/util/List;

    move-result-object v1

    :goto_22b
    move-object/from16 v16, v1

    goto :goto_230

    :cond_22e
    const/4 v1, 0x0

    goto :goto_22b

    :goto_230
    move-object v10, v2

    move-object v15, v0

    invoke-direct/range {v10 .. v16}, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;-><init>(JLjava/lang/String;Ljava/io/File;Lorg/json/JSONObject;Ljava/util/List;)V

    return-object v2

    .line 176
    :cond_236
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Workshop item has no downloadable files"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_23e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Workshop item has no downloadable content"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Lcom/gmodvr/flat/GameContentProfile;JLjava/lang/String;Lcom/gmodvr/flat/WorkshopCollection$Progress;)Lcom/gmodvr/flat/WorkshopQueue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-static {p1}, Lcom/gmodvr/flat/SteamCatalog;->appId(Lcom/gmodvr/flat/GameContentProfile;)I

    move-result v0

    .line 118
    new-instance v1, Lcom/gmodvr/flat/SteamDownloads$1;

    invoke-direct {v1, p0, v0}, Lcom/gmodvr/flat/SteamDownloads$1;-><init>(Lcom/gmodvr/flat/SteamDownloads;I)V

    .line 122
    new-instance p0, Lcom/gmodvr/flat/WorkshopCollection;

    new-instance v0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v1, v0, p5}, Lcom/gmodvr/flat/WorkshopCollection;-><init>(Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/WorkshopCollection$Fetch;Lcom/gmodvr/flat/WorkshopCollection$Sleep;Lcom/gmodvr/flat/WorkshopCollection$Progress;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/gmodvr/flat/WorkshopCollection;->resolve(JLjava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object p0

    return-object p0
.end method

.method public workshop(Lcom/gmodvr/flat/GameContentProfile;JLjava/io/File;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/GameContentProfile;",
            "J",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    const-string v4, "probe"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/gmodvr/flat/SteamDownloads;->resolve(Lcom/gmodvr/flat/GameContentProfile;JLjava/lang/String;Lcom/gmodvr/flat/WorkshopCollection$Progress;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object p2

    .line 131
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v0, p2, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 133
    invoke-virtual {v1}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->linked:Z

    if-eqz v2, :cond_2c

    goto :goto_15

    .line 134
    :cond_2c
    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {v2}, Lcom/gmodvr/flat/SteamSession;->check()V

    .line 135
    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloads;->steam:Lcom/gmodvr/flat/SteamSession;

    invoke-static {p1}, Lcom/gmodvr/flat/SteamCatalog;->appId(Lcom/gmodvr/flat/GameContentProfile;)I

    move-result v3

    iget-wide v4, v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/gmodvr/flat/SteamSession;->workshop(IJ)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/gmodvr/flat/WorkshopQueue;->collectionsJson(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v2, p4, v1}, Lcom/gmodvr/flat/SteamDownloads;->item(Lcom/gmodvr/flat/GameContentProfile;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;Ljava/io/File;Lorg/json/JSONArray;)Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 137
    :cond_49
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_50

    return-object p3

    :cond_50
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This Workshop collection has no downloadable items"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.gmodvr.flat.SteamDownloads.AnonymousClass1 (com.gmodvr.flat.SteamDownloads$1)
.class Lcom/gmodvr/flat/SteamDownloads$1;
.super Ljava/lang/Object;
.source "SteamDownloads.java"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopCollection$Fetch;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/SteamDownloads;->resolve(Lcom/gmodvr/flat/GameContentProfile;JLjava/lang/String;Lcom/gmodvr/flat/WorkshopCollection$Progress;)Lcom/gmodvr/flat/WorkshopQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/SteamDownloads;

.field final synthetic val$app:I


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/SteamDownloads;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloads$1;->this$0:Lcom/gmodvr/flat/SteamDownloads;

    iput p2, p0, Lcom/gmodvr/flat/SteamDownloads$1;->val$app:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloads$1;->this$0:Lcom/gmodvr/flat/SteamDownloads;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloads;->-$$Nest$fgetsteam(Lcom/gmodvr/flat/SteamDownloads;)Lcom/gmodvr/flat/SteamSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gmodvr/flat/SteamSession;->check()V

    return-void
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloads$1;->this$0:Lcom/gmodvr/flat/SteamDownloads;

    invoke-static {v0}, Lcom/gmodvr/flat/SteamDownloads;->-$$Nest$fgetsteam(Lcom/gmodvr/flat/SteamDownloads;)Lcom/gmodvr/flat/SteamSession;

    move-result-object v0

    iget p0, p0, Lcom/gmodvr/flat/SteamDownloads$1;->val$app:I

    invoke-virtual {v0, p0, p1}, Lcom/gmodvr/flat/SteamSession;->workshopBatch(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.SteamDownloads.Planned (com.gmodvr.flat.SteamDownloads$Planned)
.class final Lcom/gmodvr/flat/SteamDownloads$Planned;
.super Ljava/lang/Object;
.source "SteamDownloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamDownloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Planned"
.end annotation


# instance fields
.field final depot:Lcom/gmodvr/flat/SteamSession$Depot;

.field final file:Lin/dragonbra/javasteam/types/FileData;

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/SteamSession$Depot;Lin/dragonbra/javasteam/types/FileData;Ljava/lang/String;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloads$Planned;->depot:Lcom/gmodvr/flat/SteamSession$Depot;

    .line 30
    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloads$Planned;->file:Lin/dragonbra/javasteam/types/FileData;

    .line 31
    iput-object p3, p0, Lcom/gmodvr/flat/SteamDownloads$Planned;->name:Ljava/lang/String;

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloads.Progress (com.gmodvr.flat.SteamDownloads$Progress)
.class interface abstract Lcom/gmodvr/flat/SteamDownloads$Progress;
.super Ljava/lang/Object;
.source "SteamDownloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamDownloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Progress"
.end annotation


# virtual methods
.method public abstract update(Ljava/lang/String;JJ)V
.end method

###### Class com.gmodvr.flat.SteamDownloads.WorkshopItem (com.gmodvr.flat.SteamDownloads$WorkshopItem)
.class final Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;
.super Ljava/lang/Object;
.source "SteamDownloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamDownloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkshopItem"
.end annotation


# instance fields
.field final checksums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopIntegrity$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final folder:Ljava/io/File;

.field final id:J

.field final metadata:Lorg/json/JSONObject;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/io/File;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;-><init>(JLjava/lang/String;Ljava/io/File;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/io/File;Lorg/json/JSONObject;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 107
    invoke-direct/range {v0 .. v6}, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;-><init>(JLjava/lang/String;Ljava/io/File;Lorg/json/JSONObject;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/io/File;Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopIntegrity$Entry;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-wide p1, p0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->id:J

    iput-object p3, p0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->folder:Ljava/io/File;

    iput-object p5, p0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->metadata:Lorg/json/JSONObject;

    if-nez p6, :cond_f

    const/4 p1, 0x0

    goto :goto_14

    .line 111
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_14
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->checksums:Ljava/util/List;

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda1 (com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloads;

.field public final synthetic f$1:[J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloads;[JLjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamDownloads;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda1;->f$1:[J

    iput-object p3, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamDownloads;

    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda1;->f$1:[J

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gmodvr/flat/SteamDownloads;->$r8$lambda$U50slmYBtYRuYt7LtL1nz3vsYuk(Lcom/gmodvr/flat/SteamDownloads;[JLjava/lang/String;J)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda2 (com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamTransfer$Source;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloads;

.field public final synthetic f$1:Lcom/gmodvr/flat/SteamDownloads$Planned;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloads;Lcom/gmodvr/flat/SteamDownloads$Planned;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/SteamDownloads;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda2;->f$1:Lcom/gmodvr/flat/SteamDownloads$Planned;

    return-void
.end method


# virtual methods
.method public final fetch(Lin/dragonbra/javasteam/types/ChunkData;)[B
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/SteamDownloads;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda2;->f$1:Lcom/gmodvr/flat/SteamDownloads$Planned;

    invoke-static {v0, p0, p1}, Lcom/gmodvr/flat/SteamDownloads;->$r8$lambda$89blJHRNwkMk8x40EpUVUJ3uQxA(Lcom/gmodvr/flat/SteamDownloads;Lcom/gmodvr/flat/SteamDownloads$Planned;Lin/dragonbra/javasteam/types/ChunkData;)[B

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda3 (com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamTransfer$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloads;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloads;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/SteamDownloads;

    return-void
.end method


# virtual methods
.method public final advance(JLjava/lang/String;)V
    .registers 4

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/SteamDownloads;

    invoke-static {p0, p1, p2, p3}, Lcom/gmodvr/flat/SteamDownloads;->$r8$lambda$KBOcxScn3PdNJEBzpxAU0zCOXTc(Lcom/gmodvr/flat/SteamDownloads;JLjava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda4 (com.gmodvr.flat.SteamDownloads$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloads$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    check-cast p1, Lin/dragonbra/javasteam/types/KeyValue;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamDownloads;->$r8$lambda$AGxj5d8YLO2ChQxbTMzwHJfmP4Y(Ljava/lang/String;Lin/dragonbra/javasteam/types/KeyValue;)I

    move-result p0

    return p0
.end method
