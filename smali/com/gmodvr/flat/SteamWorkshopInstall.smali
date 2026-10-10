###### Class com.gmodvr.flat.SteamWorkshopInstall (com.gmodvr.flat.SteamWorkshopInstall)
.class final Lcom/gmodvr/flat/SteamWorkshopInstall;
.super Ljava/lang/Object;
.source "SteamWorkshopInstall.java"


# static fields
.field private static final MARKER:Ljava/lang/String; = ".sourceandroid-workshop.json"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyTree(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 76
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v0, v1, [Ljava/nio/file/CopyOption;

    invoke-static {p0, p1, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return-void

    .line 79
    :cond_1f
    invoke-static {p1}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 82
    array-length v0, p0

    :goto_29
    if-ge v1, v0, :cond_3c

    aget-object v2, p0, v1

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/gmodvr/flat/SteamWorkshopInstall;->copyTree(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3c
    return-void

    .line 81
    :cond_3d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read prepared Workshop content"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_45
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Symbolic links are not allowed in Workshop content"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static install(Ljava/io/File;Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-wide v0, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "workshop_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".steam-workshop-backup-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".sourceandroid-disabled-workshop_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v4}, [Ljava/nio/file/LinkOption;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_143

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 20
    invoke-static {v2, v0}, Lcom/gmodvr/flat/SteamWorkshopInstall;->requireOwned(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6c

    invoke-static {v2, v1}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V

    goto :goto_72

    .line 22
    :cond_6c
    invoke-static {v1, v0}, Lcom/gmodvr/flat/SteamWorkshopInstall;->requireOwned(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    .line 24
    :cond_72
    :goto_72
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-static {v1, v0}, Lcom/gmodvr/flat/SteamWorkshopInstall;->requireOwned(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    :cond_7b
    new-instance v3, Ljava/io/File;

    const-string v4, ".sourceandroid-disabled"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 26
    new-instance v3, Ljava/io/File;

    iget-object v5, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->folder:Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [B

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v5, v4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 27
    :cond_9b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    iget-object v5, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 29
    iget-object v4, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->metadata:Lorg/json/JSONObject;

    if-eqz v4, :cond_d0

    const-wide/16 v5, 0x0

    .line 30
    const-string v7, "time"

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    iget-object v4, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->metadata:Lorg/json/JSONObject;

    const-string v5, "collections"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_d0

    iget-object v4, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->metadata:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_d0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->folder:Ljava/io/File;

    const-string v7, ".sourceandroid-workshop.json"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 34
    :try_start_de
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 35
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_f2
    .catchall {:try_start_de .. :try_end_f2} :catchall_139

    .line 36
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".steam-workshop-incoming-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    .line 41
    :try_start_10d
    iget-object v0, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->folder:Ljava/io/File;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V
    :try_end_112
    .catch Ljava/nio/file/AtomicMoveNotSupportedException; {:try_start_10d .. :try_end_112} :catch_113

    goto :goto_118

    .line 42
    :catch_113
    iget-object p1, p1, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->folder:Ljava/io/File;

    invoke-static {p1, p0}, Lcom/gmodvr/flat/SteamWorkshopInstall;->copyTree(Ljava/io/File;Ljava/io/File;)V

    .line 43
    :goto_118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_121

    invoke-static {v1, v2}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V

    .line 44
    :cond_121
    :try_start_121
    invoke-static {p0, v1}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_124} :catch_128

    .line 49
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    return-void

    :catch_128
    move-exception p0

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_138

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_138

    invoke-static {v2, v1}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V

    .line 47
    :cond_138
    throw p0

    :catchall_139
    move-exception p0

    .line 33
    :try_start_13a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_13e

    goto :goto_142

    :catchall_13e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_142
    throw p0

    .line 18
    :cond_143
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Enable or remove the legacy disabled Workshop folder before updating it"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static installed(Ljava/io/File;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[J>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_e

    return-object v2

    .line 57
    :cond_e
    array-length v3, p0

    move v4, v1

    :goto_10
    if-ge v4, v3, :cond_9a

    aget-object v5, p0, v4

    .line 58
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 59
    const-string v7, ".sourceandroid-disabled-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    :cond_26
    const-string v7, "workshop_[0-9]{1,20}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_97

    .line 61
    :cond_2f
    new-instance v7, Ljava/io/File;

    const-string v8, ".sourceandroid-workshop.json"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    :try_start_36
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_97

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v5

    if-nez v5, :cond_97

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x10000

    cmp-long v5, v8, v10

    if-lez v5, :cond_52

    goto :goto_97

    .line 64
    :cond_52
    new-instance v5, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v7

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x9

    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_81

    goto :goto_97

    .line 67
    :cond_81
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "time"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    const/4 v5, 0x2

    new-array v5, v5, [J

    aput-wide v10, v5, v1

    aput-wide v8, v5, v0

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_97} :catch_97

    :catch_97
    :cond_97
    :goto_97
    add-int/2addr v4, v0

    goto/16 :goto_10

    :cond_9a
    return-object v2
.end method

.method private static requireOwned(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/io/File;

    const-string v1, ".sourceandroid-workshop.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_4b

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result p0

    if-nez p0, :cond_4b

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x10000

    cmp-long p0, v1, v3

    if-gtz p0, :cond_4b

    .line 89
    new-instance p0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    return-void

    :cond_43
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Workshop destination belongs to another item"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_4b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Workshop destination contains unmanaged files; rename it before installing"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
