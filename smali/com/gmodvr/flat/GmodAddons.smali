###### Class com.gmodvr.flat.GmodAddons (com.gmodvr.flat.GmodAddons)
.class final Lcom/gmodvr/flat/GmodAddons;
.super Ljava/lang/Object;
.source "GmodAddons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/GmodAddons$Addon;,
        Lcom/gmodvr/flat/GmodAddons$Group;,
        Lcom/gmodvr/flat/GmodAddons$Kind;
    }
.end annotation


# static fields
.field static final BUILTIN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final COLLECTIONS:Ljava/lang/String; = "collections"

.field static final DISABLED_DIR:Ljava/lang/String; = "addons_disabled"

.field static final ENABLED_DIR:Ljava/lang/String; = "addons"

.field static final GAME_DIR:Ljava/lang/String; = "garrysmod"

.field static final META:Ljava/lang/String; = "workshop.json"

.field private static final META_LIMIT:J = 0x100000L

.field static final MOUNT_PREFS:Ljava/lang/String; = "data/gmodvr_addon_mount.txt"

.field private static final MOUNT_PREFS_LIMIT:J = 0x800000L


# direct methods
.method public static synthetic $r8$lambda$28-X1gK8D36FYzRJuxhlVWhwpk0(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/GmodAddons$Addon;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodAddons;->lambda$listLocal$2(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/GmodAddons$Addon;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MyvFPY115Ygtp5NFmBJihMq3CdA(Lcom/gmodvr/flat/GmodAddons$Group;Lcom/gmodvr/flat/GmodAddons$Group;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodAddons;->lambda$groups$0(Lcom/gmodvr/flat/GmodAddons$Group;Lcom/gmodvr/flat/GmodAddons$Group;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SI58psqm5xuThCyv-gYp7w-xNME(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodAddons;->lambda$removeLocal$3(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rVKcteBu77naKWCZL3GMkCax6ig(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/GmodAddons$Addon;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodAddons;->lambda$list$1(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/GmodAddons$Addon;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "gmodvr"

    const-string v2, "vrmod"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/GmodAddons;->BUILTIN:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCollections(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_cb

    .line 257
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_cb

    .line 258
    :cond_d
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->enabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/io/File;

    move-result-object p0

    move v3, v2

    :goto_1a
    if-ge v3, v0, :cond_cb

    aget-object v4, p0, v3

    .line 259
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_c8

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto/16 :goto_c8

    .line 261
    :cond_35
    invoke-static {v5}, Lcom/gmodvr/flat/GmodAddons;->readMeta(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_c8

    .line 262
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    goto/16 :goto_c8

    .line 263
    :cond_49
    const-string p0, "collections"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/gmodvr/flat/GmodAddons;->mergeCollections(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_5f

    move v3, v2

    goto :goto_67

    :cond_5f
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_67
    if-ne p2, v3, :cond_6a

    return v1

    .line 265
    :cond_6a
    :try_start_6a
    invoke-virtual {v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_6d} :catch_c1

    .line 266
    new-instance p0, Ljava/io/File;

    const-string p1, ".workshop.json.tmp"

    invoke-direct {p0, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    :try_start_74
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_74 .. :try_end_79} :catch_ad

    .line 268
    :try_start_79
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 269
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8d
    .catchall {:try_start_79 .. :try_end_8d} :catchall_af

    .line 270
    :try_start_8d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_90} :catch_ad

    .line 273
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const-string p2, "workshop.json"

    invoke-direct {p1, v5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array p2, v0, [Ljava/nio/file/CopyOption;

    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v0, p2, v2

    sget-object v0, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v0, p2, v1

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return v1

    :catch_ad
    move-exception p0

    goto :goto_b9

    :catchall_af
    move-exception p0

    .line 267
    :try_start_b0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    goto :goto_b8

    :catchall_b4
    move-exception p1

    :try_start_b5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b8
    throw p0
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_b5 .. :try_end_b9} :catch_ad

    .line 271
    :goto_b9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not encode workshop.json"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_c1
    move-exception p0

    .line 265
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_c8
    :goto_c8
    add-int/2addr v3, v1

    goto/16 :goto_1a

    :cond_cb
    :goto_cb
    return v2
.end method

.method private static asciiLower(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 588
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 589
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_1f

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    .line 590
    :cond_1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 592
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 707
    const-string p0, ""

    return-object p0

    .line 708
    :cond_5
    const-string v0, "\\p{Cntrl}+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 709
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_22

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_22
    return-object p0
.end method

.method public static clearMountChoices(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V
    .registers 6
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

    .line 537
    const-string v0, "data/gmodvr_addon_mount.txt"

    if-eqz p1, :cond_c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lcom/gmodvr/flat/GmodAddons;->clearMountChoices(Ljava/io/File;Ljava/util/Set;)Z

    .line 538
    :cond_c
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "garrysmod"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/gmodvr/flat/GmodAddons;->clearMountChoices(Ljava/io/File;Ljava/util/Set;)Z

    return-void
.end method

.method public static clearMountChoices(Ljava/io/File;Ljava/util/Set;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 549
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 550
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_144

    invoke-static {v2}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_144

    new-array v3, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_144

    invoke-static {v2}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v5

    const-wide/32 v7, 0x800000

    cmp-long v3, v5, v7

    if-lez v3, :cond_28

    goto/16 :goto_144

    .line 552
    :cond_28
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 553
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Lcom/gmodvr/flat/GmodAddons;->asciiLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 554
    :cond_52
    new-instance p1, Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p1, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move v6, v4

    move v7, v6

    .line 558
    :goto_68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_dd

    move v8, v6

    .line 560
    :goto_6f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_87

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_87

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xd

    if-eq v9, v10, :cond_87

    add-int/2addr v8, v1

    goto :goto_6f

    .line 562
    :cond_87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_9a

    const-string v9, "\r\n"

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_97

    move v9, v0

    goto :goto_98

    :cond_97
    move v9, v1

    :goto_98
    add-int/2addr v9, v8

    goto :goto_9b

    :cond_9a
    move v9, v8

    .line 563
    :goto_9b
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x20

    .line 564
    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/16 v11, 0x9

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 565
    const-string v11, ""

    if-ltz v10, :cond_c6

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v12, v13, :cond_bc

    goto :goto_c6

    :cond_bc
    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v10, "\\s+$"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 566
    :cond_c6
    :goto_c6
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d8

    invoke-static {v11}, Lcom/gmodvr/flat/GmodAddons;->asciiLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d8

    move v7, v1

    goto :goto_db

    .line 567
    :cond_d8
    invoke-virtual {v5, p1, v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_db
    move v6, v9

    goto :goto_68

    :cond_dd
    if-nez v7, :cond_e0

    return v4

    .line 571
    :cond_e0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 572
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 573
    :try_start_108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 574
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_11c
    .catchall {:try_start_108 .. :try_end_11c} :catchall_13a

    .line 575
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 577
    :try_start_11f
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array v0, v0, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v0, v4

    sget-object v3, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v0, v1

    invoke-static {p0, v2, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_130} :catch_131

    return v1

    :catch_131
    move-exception p0

    .line 579
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 580
    throw p0

    :catchall_13a
    move-exception p1

    .line 572
    :try_start_13b
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_13f

    goto :goto_143

    :catchall_13f
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_143
    throw p1

    :cond_144
    :goto_144
    return v4
.end method

.method private static deleteWithoutFollowing(Ljava/nio/file/Path;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    :try_start_0
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v1}, [Ljava/nio/file/LinkOption;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0
    :try_end_c
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_c} :catch_3e

    .line 811
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 812
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .line 813
    :try_start_16
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    invoke-static {v2}, Lcom/gmodvr/flat/GmodAddons;->deleteWithoutFollowing(Ljava/nio/file/Path;)V
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_2a

    goto :goto_1a

    :catchall_2a
    move-exception p0

    goto :goto_30

    .line 814
    :cond_2c
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_3b

    :goto_30
    if-eqz v0, :cond_3a

    .line 812
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

    .line 816
    :cond_3b
    :goto_3b
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    :catch_3e
    return-void
.end method

.method public static disabledRoot(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 41
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "garrysmod"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "addons_disabled"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static enabledRoot(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 40
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "garrysmod"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "addons"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static exists(Ljava/io/File;)Z
    .registers 2

    .line 355
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v0}, [Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static folderMeta(Ljava/io/File;)Lorg/json/JSONObject;
    .registers 9

    .line 661
    new-instance v0, Ljava/io/File;

    const-string v1, "addon.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gmodvr/flat/GmodAddons;->readSmall(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 662
    const-string v1, "title"

    const-string v2, ""

    if-eqz v0, :cond_62

    .line 664
    :try_start_11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1a} :catch_38

    .line 666
    :try_start_1a
    const-string v5, "author"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_20} :catch_35

    .line 667
    :try_start_20
    const-string v6, "description"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_26} :catch_33

    .line 668
    :try_start_26
    const-string v7, "type"

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_32} :catch_3b

    goto :goto_66

    :catch_33
    move-object v6, v2

    goto :goto_3b

    :catch_35
    move-object v5, v2

    :goto_36
    move-object v6, v5

    goto :goto_3b

    :catch_38
    move-object v4, v2

    move-object v5, v4

    goto :goto_36

    .line 671
    :catch_3b
    :goto_3b
    const-string v3, "\"title\"\\s*:\\s*\"((?:[^\"\\\\]|\\\\.)*)\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_60

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\\""

    const-string v4, "\""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\\\"

    const-string v4, "\\"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_60
    move-object v0, v2

    goto :goto_66

    :cond_62
    move-object v0, v2

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    .line 675
    :goto_66
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 676
    new-instance v3, Ljava/io/File;

    const-string v7, "addon.txt"

    invoke-direct {v3, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gmodvr/flat/GmodAddons;->readSmall(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b4

    .line 678
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->keyValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 679
    const-string v3, "name"

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_8d
    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    goto :goto_96

    :cond_91
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8d

    .line 680
    :goto_96
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a5

    const-string v1, "author_name"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 681
    :cond_a5
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b4

    const-string v1, "info"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    .line 684
    :cond_b4
    invoke-static {v4, v5, v6, v0}, Lcom/gmodvr/flat/GmodAddons;->localMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static gmaMeta(Ljava/io/File;)Lorg/json/JSONObject;
    .registers 6

    .line 690
    :try_start_0
    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->readHeaderAny(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0

    .line 691
    iget-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->author:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "author"

    const-string v3, "author name"

    const-string v4, "no author provided"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gmodvr/flat/GmodAddons;->placeholder(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gmodvr/flat/GmaArchive$Info;->description:Ljava/lang/String;

    .line 692
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    const-string v4, "no description provided"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gmodvr/flat/GmodAddons;->placeholder(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->type:Ljava/lang/String;

    .line 691
    invoke-static {v0, v1, v2, p0}, Lcom/gmodvr/flat/GmodAddons;->localMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_32} :catch_33

    return-object p0

    .line 694
    :catch_33
    const-string p0, ""

    invoke-static {p0, p0, p0, p0}, Lcom/gmodvr/flat/GmodAddons;->localMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static groups(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Group;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 303
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/GmodAddons$Addon;

    .line 304
    invoke-virtual {v1}, Lcom/gmodvr/flat/GmodAddons$Addon;->local()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_9

    .line 305
    :cond_1c
    iget-object v2, v1, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v3, "collections"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_27

    goto :goto_9

    :cond_27
    const/4 v3, 0x0

    .line 307
    :goto_28
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 308
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 309
    const-string v5, ""

    if-nez v4, :cond_38

    move-object v6, v5

    goto :goto_3e

    :cond_38
    const-string v6, "id"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    :goto_3e
    const-string v7, "[0-9]{1,20}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_47

    goto :goto_6a

    .line 311
    :cond_47
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gmodvr/flat/GmodAddons$Group;

    if-nez v7, :cond_5d

    .line 312
    new-instance v7, Lcom/gmodvr/flat/GmodAddons$Group;

    const-string v8, "title"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v6, v4}, Lcom/gmodvr/flat/GmodAddons$Group;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_5d
    iget-object v4, v7, Lcom/gmodvr/flat/GmodAddons$Group;->addons:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    iget-object v4, v7, Lcom/gmodvr/flat/GmodAddons$Group;->addons:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6a
    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 316
    :cond_6d
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    new-instance v0, Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static install(Ljava/io/File;Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-static {p0, p1, v0}, Lcom/gmodvr/flat/GmodAddons;->install(Ljava/io/File;Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)V

    return-void
.end method

.method public static install(Ljava/io/File;Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 178
    iget-wide v1, v0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodAddons;->enabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 180
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 181
    invoke-static {v3}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 182
    invoke-static {v2, v1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 183
    invoke-static {v3, v1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".backup-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-enabled"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 189
    invoke-static {v12, v2, v11, v1}, Lcom/gmodvr/flat/GmodAddons;->reconcile(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 190
    invoke-static {v13, v11, v2, v1}, Lcom/gmodvr/flat/GmodAddons;->reconcile(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 191
    invoke-static {v2}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v3

    invoke-static {v11}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v3, :cond_7f

    if-nez v4, :cond_63

    goto :goto_7f

    .line 192
    :cond_63
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Addon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exists both enabled and disabled; remove one first"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    :goto_7f
    if-eqz v3, :cond_84

    .line 193
    invoke-static {v2, v1}, Lcom/gmodvr/flat/GmodAddons;->requireOwned(Ljava/io/File;Ljava/lang/String;)V

    :cond_84
    if-eqz v4, :cond_89

    .line 194
    invoke-static {v11, v1}, Lcom/gmodvr/flat/GmodAddons;->requireOwned(Ljava/io/File;Ljava/lang/String;)V

    :cond_89
    move-object/from16 v5, p0

    .line 197
    invoke-static {v5, v1}, Lcom/gmodvr/flat/GmodAddons;->legacyFolder(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_ad

    .line 200
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".sourceandroid-disabled-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_aa

    new-instance v5, Ljava/io/File;

    const-string v6, ".sourceandroid-disabled"

    invoke-direct {v5, v14, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_ad

    :cond_aa
    if-nez v3, :cond_ad

    const/4 v4, 0x1

    :cond_ad
    move v15, v4

    .line 205
    iget-object v3, v0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->metadata:Lorg/json/JSONObject;

    if-eqz v3, :cond_b3

    goto :goto_c0

    :cond_b3
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->title:Ljava/lang/String;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v10}, Lcom/gmodvr/flat/GmodAddons;->metadata(Ljava/lang/String;Ljava/lang/String;JLjava/util/Collection;Lcom/gmodvr/flat/GmaArchive$Info;J)Lorg/json/JSONObject;

    move-result-object v3

    .line 206
    :goto_c0
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->folder:Ljava/io/File;

    invoke-static {v4}, Lcom/gmodvr/flat/GmodAddons;->treeSize(Ljava/io/File;)J

    move-result-wide v4

    const-string v6, "size"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 207
    const-string v4, "id"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->folder:Ljava/io/File;

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->checksums:Ljava/util/List;

    move-object/from16 v5, p2

    invoke-static {v1, v4, v5}, Lcom/gmodvr/flat/WorkshopIntegrity;->write(Ljava/io/File;Ljava/util/List;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)V

    if-eqz v15, :cond_dc

    move-object v2, v11

    .line 213
    :cond_dc
    invoke-static {v2}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_e8

    invoke-static {v2}, Lcom/gmodvr/flat/GmodAddons;->readMeta(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_e9

    :cond_e8
    move-object v1, v4

    .line 214
    :goto_e9
    const-string v5, "collections"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v1, :cond_f2

    goto :goto_f6

    :cond_f2
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    :goto_f6
    invoke-static {v6, v4}, Lcom/gmodvr/flat/GmodAddons;->mergeCollections(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_104

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_107

    :cond_104
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    :goto_107
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->folder:Ljava/io/File;

    invoke-static {v1, v3}, Lcom/gmodvr/flat/GmodAddons;->writeMeta(Ljava/io/File;Lorg/json/JSONObject;)V

    if-eqz v15, :cond_10f

    move-object v12, v13

    .line 219
    :cond_10f
    invoke-static {v2}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 220
    invoke-static {v2, v12}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V

    .line 221
    :cond_118
    :try_start_118
    iget-object v0, v0, Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;->folder:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11d} :catch_12e

    if-eqz v1, :cond_122

    .line 227
    invoke-static {v12}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    :cond_122
    if-eqz v14, :cond_12d

    .line 228
    invoke-static {v14}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-static {v14}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    :cond_12d
    return-void

    :catch_12e
    move-exception v0

    if-eqz v1, :cond_140

    .line 223
    invoke-static {v2}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_140

    invoke-static {v12}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_140

    invoke-static {v12, v2}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V

    .line 224
    :cond_140
    throw v0
.end method

.method public static installed(Ljava/io/File;)Ljava/util/Map;
    .registers 9
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

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 282
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/GmodAddons$Addon;

    .line 283
    invoke-virtual {v1}, Lcom/gmodvr/flat/GmodAddons$Addon;->local()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_d

    .line 284
    :cond_20
    :try_start_20
    iget-object v2, v1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v4, "time"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iget-wide v5, v1, Lcom/gmodvr/flat/GmodAddons$Addon;->size:J

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v7, 0x0

    aput-wide v3, v1, v7

    const/4 v3, 0x1

    aput-wide v5, v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_42} :catch_d

    goto :goto_d

    :cond_43
    return-object v0
.end method

.method public static isWorkshopFolder(Ljava/io/File;)Z
    .registers 4

    .line 394
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 395
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_39

    const-string v1, "[0-9]{1,20}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_39

    .line 396
    :cond_26
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->readMeta(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 397
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 v2, 0x1

    :cond_39
    :goto_39
    return v2
.end method

.method public static keyValues(Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 727
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :cond_d
    :goto_d
    move-object v6, v3

    :cond_e
    :goto_e
    if-ge v4, v1, :cond_d3

    .line 731
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 732
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_cf

    const v8, 0xfeff

    if-ne v7, v8, :cond_21

    goto/16 :goto_cf

    :cond_21
    const/16 v8, 0x2f

    if-ne v7, v8, :cond_3c

    add-int/lit8 v9, v4, 0x1

    if-ge v9, v1, :cond_3c

    .line 733
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_3c

    :goto_2f
    if-ge v4, v1, :cond_e

    .line 734
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_e

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_3c
    const/16 v8, 0x7b

    if-ne v7, v8, :cond_45

    add-int/lit8 v5, v5, 0x1

    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_45
    const/16 v8, 0x7d

    if-ne v7, v8, :cond_50

    add-int/lit8 v5, v5, -0x1

    .line 738
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_42

    :cond_50
    const/16 v8, 0x22

    if-ne v7, v8, :cond_8e

    .line 741
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    :goto_5b
    if-ge v4, v1, :cond_87

    .line 743
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_87

    add-int/lit8 v9, v4, 0x1

    .line 744
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_82

    if-ge v9, v1, :cond_82

    .line 745
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v8, :cond_7b

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v11, :cond_82

    :cond_7b
    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_83

    :cond_82
    move v4, v9

    .line 746
    :goto_83
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_87
    add-int/lit8 v4, v4, 0x1

    .line 749
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_bc

    :cond_8e
    move v7, v4

    :goto_8f
    if-ge v7, v1, :cond_aa

    .line 752
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_aa

    const-string v8, "{}\""

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_aa

    add-int/lit8 v7, v7, 0x1

    goto :goto_8f

    .line 753
    :cond_aa
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 754
    const-string v8, "["

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    move v4, v7

    goto/16 :goto_e

    :cond_b9
    move v13, v7

    move-object v7, v4

    move v4, v13

    :goto_bc
    if-nez v6, :cond_c1

    move-object v6, v7

    goto/16 :goto_e

    :cond_c1
    const/4 v8, 0x1

    if-gt v5, v8, :cond_d

    .line 757
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_cf
    :goto_cf
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :cond_d3
    return-object v0
.end method

.method private static synthetic lambda$groups$0(Lcom/gmodvr/flat/GmodAddons$Group;Lcom/gmodvr/flat/GmodAddons$Group;)I
    .registers 5

    .line 318
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/gmodvr/flat/GmodAddons$Group;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Group;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 319
    :cond_11
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Group;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/gmodvr/flat/GmodAddons$Group;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_19
    return v0
.end method

.method private static synthetic lambda$list$1(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/GmodAddons$Addon;)I
    .registers 5

    .line 427
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 428
    :cond_11
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_19
    return v0
.end method

.method private static synthetic lambda$listLocal$2(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/GmodAddons$Addon;)I
    .registers 5

    .line 652
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 653
    :cond_11
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_19
    return v0
.end method

.method private static synthetic lambda$removeLocal$3(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 799
    const-string p0, ".removing-local-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static legacyFolder(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 10

    .line 374
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "garrysmod"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "custom"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "workshop_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".sourceandroid-disabled-workshop_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_35
    const/4 v2, 0x2

    if-ge v1, v2, :cond_99

    aget-object v2, p0, v1

    .line 376
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 378
    new-instance v2, Ljava/io/File;

    const-string v4, ".sourceandroid-workshop.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_53

    new-instance v2, Ljava/io/File;

    const-string v4, ".sourcevr-workshop.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    :cond_53
    :try_start_53
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v4

    if-nez v4, :cond_96

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x10000

    cmp-long v4, v4, v6

    if-lez v4, :cond_75

    goto :goto_96

    .line 383
    :cond_75
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 384
    const-string v2, "id"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_93} :catch_96
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_93} :catch_96

    if-eqz v2, :cond_96

    return-object v3

    :catch_96
    :cond_96
    :goto_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_99
    const/4 p0, 0x0

    return-object p0
.end method

.method public static list(Ljava/io/File;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 403
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x2

    .line 404
    new-array v4, v3, [Z

    fill-array-data v4, :array_d4

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v3, :cond_8f

    aget-boolean v14, v4, v5

    if-eqz v14, :cond_1c

    .line 405
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodAddons;->enabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    goto :goto_20

    :cond_1c
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 406
    :goto_20
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    if-nez v15, :cond_2a

    :cond_26
    move-object/from16 v18, v4

    goto/16 :goto_89

    .line 408
    :cond_2a
    array-length v12, v15

    const/4 v13, 0x0

    :goto_2c
    if-ge v13, v12, :cond_26

    aget-object v8, v15, v13

    .line 409
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 410
    invoke-static {v8}, Lcom/gmodvr/flat/GmodAddons;->isWorkshopFolder(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_41

    :goto_3a
    move-object/from16 v18, v4

    move/from16 v16, v12

    move/from16 v19, v13

    goto :goto_81

    .line 411
    :cond_41
    invoke-static {v8}, Lcom/gmodvr/flat/GmodAddons;->readMeta(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_48

    goto :goto_3a

    .line 413
    :cond_48
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 414
    :cond_52
    const-string v6, "size"

    const-wide/16 v2, -0x1

    invoke-virtual {v10, v6, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v9, v2, v6

    if-gez v9, :cond_66

    .line 416
    :try_start_60
    invoke-static {v8}, Lcom/gmodvr/flat/GmodAddons;->treeSize(Ljava/io/File;)J

    move-result-wide v2
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-wide v2, v6

    .line 418
    :cond_66
    :goto_66
    new-instance v9, Lcom/gmodvr/flat/GmodAddons$Addon;

    const/16 v16, 0x0

    move-object v6, v9

    move-object v7, v11

    move-object/from16 v17, v9

    move v9, v14

    move-object/from16 v18, v4

    move-object v4, v11

    move/from16 v11, v16

    move/from16 v16, v12

    move/from16 v19, v13

    move-wide v12, v2

    invoke-direct/range {v6 .. v13}, Lcom/gmodvr/flat/GmodAddons$Addon;-><init>(Ljava/lang/String;Ljava/io/File;ZLorg/json/JSONObject;ZJ)V

    move-object/from16 v2, v17

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_81
    add-int/lit8 v13, v19, 0x1

    move/from16 v12, v16

    move-object/from16 v4, v18

    const/4 v3, 0x2

    goto :goto_2c

    :goto_89
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v18

    const/4 v3, 0x2

    goto :goto_11

    .line 421
    :cond_8f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/GmodAddons$Addon;

    .line 423
    iget-object v4, v3, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 424
    new-instance v4, Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object v6, v3, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    iget-object v7, v3, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    iget-boolean v8, v3, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    iget-object v9, v3, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const/4 v10, 0x1

    iget-wide v11, v3, Lcom/gmodvr/flat/GmodAddons$Addon;->size:J

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lcom/gmodvr/flat/GmodAddons$Addon;-><init>(Ljava/lang/String;Ljava/io/File;ZLorg/json/JSONObject;ZJ)V

    move-object v3, v4

    .line 423
    :cond_c2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 426
    :cond_c6
    new-instance v0, Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 430
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :array_d4
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public static listAll(Ljava/io/File;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;"
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 600
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->listLocal(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 601
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listLocal(Ljava/io/File;)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 612
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 613
    new-array v5, v4, [Z

    fill-array-data v5, :array_136

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v4, :cond_e6

    aget-boolean v17, v5, v6

    if-eqz v17, :cond_1d

    .line 614
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodAddons;->enabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    goto :goto_21

    :cond_1d
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 615
    :goto_21
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    if-nez v14, :cond_29

    goto/16 :goto_e2

    .line 617
    :cond_29
    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 618
    array-length v15, v14

    const/4 v13, 0x0

    :goto_2e
    if-ge v13, v15, :cond_e2

    aget-object v10, v14, v13

    .line 619
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 620
    const-string v7, "."

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    :catch_3e
    :cond_3e
    :goto_3e
    move/from16 v22, v13

    move-object/from16 v21, v14

    move/from16 v23, v15

    goto/16 :goto_d9

    .line 623
    :cond_46
    :try_start_46
    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    const-class v8, Ljava/nio/file/attribute/BasicFileAttributes;

    sget-object v11, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v11}, [Ljava/nio/file/LinkOption;

    move-result-object v11

    invoke-static {v7, v8, v11}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v7
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_56} :catch_3e

    .line 626
    invoke-interface {v7}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v8

    if-eqz v8, :cond_5d

    goto :goto_3e

    .line 627
    :cond_5d
    invoke-interface {v7}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 628
    invoke-static {v10}, Lcom/gmodvr/flat/GmodAddons;->isWorkshopFolder(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_6a

    goto :goto_3e

    .line 629
    :cond_6a
    sget-object v8, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_FOLDER:Lcom/gmodvr/flat/GmodAddons$Kind;

    goto :goto_7b

    .line 630
    :cond_6d
    invoke-interface {v7}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-static {v9}, Lcom/gmodvr/flat/GmaArchive;->isArchiveName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 631
    sget-object v8, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

    .line 633
    :goto_7b
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 634
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8b

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 636
    :cond_8b
    sget-object v11, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

    if-ne v8, v11, :cond_94

    invoke-interface {v7}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v18

    goto :goto_9b

    .line 638
    :cond_94
    :try_start_94
    invoke-static {v10}, Lcom/gmodvr/flat/GmodAddons;->treeSize(Ljava/io/File;)J

    move-result-wide v18
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_98} :catch_99

    goto :goto_9b

    :catch_99
    const-wide/16 v18, 0x0

    .line 640
    :goto_9b
    sget-object v7, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

    if-ne v8, v7, :cond_a6

    invoke-static {v10}, Lcom/gmodvr/flat/GmodAddons;->gmaMeta(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v7

    :goto_a3
    move-object/from16 v16, v7

    goto :goto_ab

    :cond_a6
    invoke-static {v10}, Lcom/gmodvr/flat/GmodAddons;->folderMeta(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_a3

    .line 641
    :goto_ab
    new-instance v11, Lcom/gmodvr/flat/GmodAddons$Addon;

    sget-object v7, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_FOLDER:Lcom/gmodvr/flat/GmodAddons$Kind;

    if-ne v8, v7, :cond_bc

    sget-object v7, Lcom/gmodvr/flat/GmodAddons;->BUILTIN:Ljava/util/Set;

    .line 642
    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bc

    move/from16 v20, v2

    goto :goto_be

    :cond_bc
    const/16 v20, 0x0

    :goto_be
    const/16 v21, 0x0

    move-object v7, v11

    move-object v3, v11

    move/from16 v11, v17

    move-object v4, v12

    move-object/from16 v12, v16

    move/from16 v22, v13

    move/from16 v13, v21

    move-object/from16 v21, v14

    move/from16 v23, v15

    move-wide/from16 v14, v18

    move/from16 v16, v20

    invoke-direct/range {v7 .. v16}, Lcom/gmodvr/flat/GmodAddons$Addon;-><init>(Lcom/gmodvr/flat/GmodAddons$Kind;Ljava/lang/String;Ljava/io/File;ZLorg/json/JSONObject;ZJZ)V

    .line 641
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d9
    add-int/lit8 v13, v22, 0x1

    move-object/from16 v14, v21

    move/from16 v15, v23

    const/4 v4, 0x2

    goto/16 :goto_2e

    :cond_e2
    :goto_e2
    add-int/2addr v6, v2

    const/4 v4, 0x2

    goto/16 :goto_12

    .line 645
    :cond_e6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_129

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 647
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/GmodAddons$Addon;

    .line 648
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 649
    new-instance v3, Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object v6, v4, Lcom/gmodvr/flat/GmodAddons$Addon;->kind:Lcom/gmodvr/flat/GmodAddons$Kind;

    iget-object v7, v4, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    iget-object v8, v4, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    iget-boolean v9, v4, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    iget-object v10, v4, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    iget-wide v12, v4, Lcom/gmodvr/flat/GmodAddons$Addon;->size:J

    iget-boolean v14, v4, Lcom/gmodvr/flat/GmodAddons$Addon;->builtin:Z

    const/4 v11, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v14}, Lcom/gmodvr/flat/GmodAddons$Addon;-><init>(Lcom/gmodvr/flat/GmodAddons$Kind;Ljava/lang/String;Ljava/io/File;ZLorg/json/JSONObject;ZJZ)V

    move-object v4, v3

    .line 648
    :cond_125
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f3

    .line 651
    :cond_129
    new-instance v0, Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 655
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_136
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method private static localMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 700
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "title"

    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "author"

    invoke-static {p1}, Lcom/gmodvr/flat/GmodAddons;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "description"

    if-nez p2, :cond_22

    .line 701
    const-string p2, ""

    goto :goto_26

    :catch_20
    move-exception p0

    goto :goto_35

    :cond_22
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_26
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "type"

    invoke-static {p3}, Lcom/gmodvr/flat/GmodAddons;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_34} :catch_20

    return-object p0

    .line 702
    :goto_35
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static mergeCollections(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 12

    .line 238
    const-string v0, "title"

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 239
    filled-new-array {p0, p1}, [Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    move v2, p1

    :goto_d
    const/4 v3, 0x2

    if-ge v2, v3, :cond_5d

    aget-object v3, p0, v2

    if-nez v3, :cond_15

    goto :goto_5a

    :cond_15
    move v4, p1

    .line 241
    :goto_16
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 242
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 243
    const-string v6, "id"

    const-string v7, ""

    if-nez v5, :cond_28

    move-object v8, v7

    goto :goto_2c

    :cond_28
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 244
    :goto_2c
    const-string v9, "[0-9]{1,20}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-virtual {v1, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    goto :goto_57

    .line 245
    :cond_3b
    :try_start_3b
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_4f} :catch_50

    goto :goto_57

    :catch_50
    move-exception p0

    .line 246
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 249
    :cond_5d
    new-instance p0, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static metadata(Ljava/lang/String;Ljava/lang/String;JLjava/util/Collection;Lcom/gmodvr/flat/GmaArchive$Info;J)Lorg/json/JSONObject;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gmodvr/flat/GmaArchive$Info;",
            "J)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p5

    .line 103
    const-string v1, ""

    if-nez p1, :cond_8

    move-object v2, v1

    goto :goto_c

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 104
    :goto_c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/gmodvr/flat/GmaArchive$Info;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_1a
    const-string v3, "author"

    if-nez v0, :cond_20

    move-object v4, v1

    goto :goto_32

    :cond_20
    iget-object v4, v0, Lcom/gmodvr/flat/GmaArchive$Info;->author:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "author name"

    const-string v6, "no author provided"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gmodvr/flat/GmodAddons;->placeholder(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    :goto_32
    const-string v5, "description"

    if-nez v0, :cond_38

    move-object v6, v1

    goto :goto_48

    :cond_38
    iget-object v6, v0, Lcom/gmodvr/flat/GmaArchive$Info;->description:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "no description provided"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/gmodvr/flat/GmodAddons;->placeholder(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_48
    const-wide/16 v7, 0x0

    cmp-long v9, p2, v7

    if-lez v9, :cond_51

    move-wide/from16 v9, p2

    goto :goto_57

    :cond_51
    if-nez v0, :cond_55

    move-wide v9, v7

    goto :goto_57

    .line 107
    :cond_55
    iget-wide v9, v0, Lcom/gmodvr/flat/GmaArchive$Info;->timestamp:J

    :goto_57
    if-nez v0, :cond_5a

    goto :goto_5e

    .line 108
    :cond_5a
    invoke-virtual/range {p5 .. p5}, Lcom/gmodvr/flat/GmaArchive$Info;->crc()J

    move-result-wide v7

    .line 110
    :goto_5e
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p4, :cond_93

    .line 111
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_69
    :goto_69
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_93

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_69

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_69

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v14, v13}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    :cond_93
    if-eqz v0, :cond_c6

    .line 113
    iget-object v12, v0, Lcom/gmodvr/flat/GmaArchive$Info;->tags:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14, v13}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9b

    .line 114
    :cond_b1
    iget-object v12, v0, Lcom/gmodvr/flat/GmaArchive$Info;->type:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c6

    iget-object v12, v0, Lcom/gmodvr/flat/GmaArchive$Info;->type:Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/gmodvr/flat/GmaArchive$Info;->type:Ljava/lang/String;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_c6
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 117
    const-string v13, "id"

    move-object/from16 v14, p0

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v13, "title"

    invoke-virtual {v12, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {v12, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v3, "tags"

    invoke-virtual {v12, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v2, "time"

    invoke-virtual {v12, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    const-string v2, "gma_crc"

    invoke-virtual {v12, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-nez v0, :cond_f8

    goto :goto_fa

    .line 124
    :cond_f8
    iget-object v1, v0, Lcom/gmodvr/flat/GmaArchive$Info;->type:Ljava/lang/String;

    :goto_fa
    const-string v0, "type"

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v0, "size"

    move-wide/from16 v1, p6

    invoke-virtual {v12, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v12
.end method

.method public static mountKeys(Lcom/gmodvr/flat/GmodAddons$Addon;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 517
    iget-object v1, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->kind:Lcom/gmodvr/flat/GmodAddons$Kind;

    sget-object v2, Lcom/gmodvr/flat/GmodAddons$Kind;->WORKSHOP:Lcom/gmodvr/flat/GmodAddons$Kind;

    if-ne v1, v2, :cond_12

    .line 518
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8f

    .line 519
    :cond_12
    sget-object v2, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

    const-string v3, "[0-9]+"

    if-ne v1, v2, :cond_6b

    .line 520
    iget-object v1, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_2e

    iget-object v1, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_2e
    iget-object v1, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    :goto_30
    const/16 v2, 0x5f

    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 523
    :cond_46
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 524
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->asciiLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 527
    :cond_6b
    iget-object v1, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-static {v1}, Lcom/gmodvr/flat/GmodAddons;->readMeta(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 528
    const-string v2, ""

    if-nez v1, :cond_76

    goto :goto_7c

    :cond_76
    const-string v4, "id"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 529
    :goto_7c
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 530
    :cond_86
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->asciiLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_8f
    return-object v0
.end method

.method private static moveEnabled(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->local()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/GmodAddons;->setLocalEnabled(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;

    move-result-object p0

    return-object p0

    .line 457
    :cond_b
    iget-boolean v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    const-string v1, "Addon "

    if-nez v0, :cond_bf

    .line 458
    iget-boolean v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    if-ne v0, p2, :cond_16

    return-object p1

    :cond_16
    if-eqz v0, :cond_1d

    .line 459
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->enabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_21

    :cond_1d
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :goto_21
    if-eqz p2, :cond_28

    .line 460
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->enabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    goto :goto_2c

    :cond_28
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 461
    :goto_2c
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    iget-object v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-direct {v6, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    iget-object v3, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Addon changed while the menu was open"

    if-eqz v0, :cond_b9

    invoke-static {v2}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 464
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_b3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 465
    invoke-static {v6}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_93

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists in the "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_81

    const-string p1, "enabled"

    goto :goto_83

    :cond_81
    const-string p1, "disabled"

    :goto_83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 466
    :cond_93
    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 468
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 469
    new-instance p0, Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object v5, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    iget-object v8, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->size:J

    move-object v4, p0

    move v7, p2

    invoke-direct/range {v4 .. v11}, Lcom/gmodvr/flat/GmodAddons$Addon;-><init>(Ljava/lang/String;Ljava/io/File;ZLorg/json/JSONObject;ZJ)V

    return-object p0

    .line 464
    :cond_b3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_b9
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 457
    :cond_bf
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exists both enabled and disabled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs placeholder(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-object p0
.end method

.method public static readMeta(Ljava/io/File;)Lorg/json/JSONObject;
    .registers 6

    .line 146
    new-instance v0, Ljava/io/File;

    const-string v1, "workshop.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 148
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-lez v1, :cond_24

    goto :goto_39

    .line 149
    :cond_24
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_38} :catch_39
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_38} :catch_39

    return-object v1

    :catch_39
    :cond_39
    :goto_39
    return-object p0
.end method

.method private static readSmall(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 715
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-lez v1, :cond_1d

    goto :goto_2d

    .line 716
    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2d

    return-object v1

    :catch_2d
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method private static reconcile(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 359
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 360
    :cond_7
    invoke-static {p0, p3}, Lcom/gmodvr/flat/GmodAddons;->requireOwned(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    invoke-static {p1}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_1a

    invoke-static {p2}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_1a

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1d

    .line 362
    :cond_1a
    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    :goto_1d
    return-void
.end method

.method public static remove(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 484
    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->local()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodAddons;->removeLocal(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    return-void

    .line 485
    :cond_a
    iget-boolean v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->enabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_17

    :cond_13
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 486
    :goto_17
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    iget-object v2, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 488
    invoke-static {v1}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_35

    return-void

    .line 489
    :cond_35
    iget-object v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/gmodvr/flat/GmodAddons;->requireOwned(Ljava/io/File;Ljava/lang/String;)V

    .line 490
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 491
    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".removing-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 493
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    .line 494
    :cond_61
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 495
    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    return-void

    .line 487
    :cond_73
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Addon changed while the menu was open"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static remove(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 477
    invoke-static {p2}, Lcom/gmodvr/flat/GmodAddons;->mountKeys(Lcom/gmodvr/flat/GmodAddons$Addon;)Ljava/util/Set;

    move-result-object v0

    .line 478
    invoke-static {p0, p2}, Lcom/gmodvr/flat/GmodAddons;->remove(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    .line 479
    :try_start_7
    invoke-static {p0, p1, v0}, Lcom/gmodvr/flat/GmodAddons;->clearMountChoices(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public static removeLocal(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    iget-boolean v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->builtin:Z

    if-nez v0, :cond_5a

    .line 795
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodAddons;->requireLocal(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)Ljava/io/File;

    move-result-object p1

    .line 796
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 797
    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 799
    new-instance v0, Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 800
    array-length v2, v0

    move v3, v1

    :goto_1d
    if-ge v3, v2, :cond_2b

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Lcom/gmodvr/flat/GmodAddons;->deleteWithoutFollowing(Ljava/nio/file/Path;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 801
    :cond_2b
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".removing-local-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    invoke-static {p0, p1, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 803
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->deleteWithoutFollowing(Ljava/nio/file/Path;)V

    return-void

    .line 794
    :cond_5a
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is part of GDroid and cannot be removed here"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static requireLocal(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    new-instance v0, Ljava/io/File;

    iget-boolean v1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    if-eqz v1, :cond_b

    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->enabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    :goto_f
    iget-object v1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    iget-object v1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    invoke-static {v0}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 767
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result p0

    if-nez p0, :cond_52

    iget-object p0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->kind:Lcom/gmodvr/flat/GmodAddons$Kind;

    sget-object p1, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

    if-ne p0, p1, :cond_4b

    .line 768
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    sget-object p1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {p1}, [Ljava/nio/file/LinkOption;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_51

    :cond_4b
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_52

    :goto_51
    return-object v0

    .line 769
    :cond_52
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Addon changed while the menu was open"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static requireOwned(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->readMeta(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    .line 369
    const-string p0, "id"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    return-void

    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Addon folder belongs to another item"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 368
    :cond_21
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Addon folder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was not installed by the launcher; rename it before installing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setEnabled(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 435
    invoke-static {p0, v0, p1, p2}, Lcom/gmodvr/flat/GmodAddons;->setEnabled(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;

    move-result-object p0

    return-object p0
.end method

.method public static setEnabled(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-static {p2}, Lcom/gmodvr/flat/GmodAddons;->mountKeys(Lcom/gmodvr/flat/GmodAddons$Addon;)Ljava/util/Set;

    move-result-object v0

    .line 445
    invoke-static {p0, p2, p3}, Lcom/gmodvr/flat/GmodAddons;->moveEnabled(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;

    move-result-object p2

    .line 447
    :try_start_8
    invoke-static {p0, p1, v0}, Lcom/gmodvr/flat/GmodAddons;->clearMountChoices(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    return-object p2

    :catch_c
    move-exception p0

    .line 449
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_25

    const-string p2, "enabled"

    goto :goto_27

    :cond_25
    const-string p2, "disabled"

    :goto_27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", but the game\'s own saved on/off choice for it could not be cleared ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setGroupEnabled(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Group;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 331
    invoke-static {p0, v0, p1, p2}, Lcom/gmodvr/flat/GmodAddons;->setGroupEnabled(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Group;Z)I

    move-result p0

    return p0
.end method

.method public static setGroupEnabled(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Group;Z)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    iget-object p2, p2, Lcom/gmodvr/flat/GmodAddons$Group;->addons:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/GmodAddons$Addon;

    .line 339
    iget-boolean v4, v3, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    const-string v5, ": "

    if-ne v4, p3, :cond_46

    .line 341
    :try_start_1f
    invoke-static {v3}, Lcom/gmodvr/flat/GmodAddons;->mountKeys(Lcom/gmodvr/flat/GmodAddons$Addon;)Ljava/util/Set;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/gmodvr/flat/GmodAddons;->clearMountChoices(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_d

    :catch_27
    move-exception v4

    .line 342
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 345
    :cond_46
    :try_start_46
    invoke-static {p0, p1, v3, p3}, Lcom/gmodvr/flat/GmodAddons;->setEnabled(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4c

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_4c
    move-exception v4

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 348
    :cond_6b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c5

    .line 349
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_7d

    const-string p2, "Enabled "

    goto :goto_7f

    :cond_7d
    const-string p2, "Disabled "

    :goto_7f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " could not be changed ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, v1, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_b3

    const-string p2, "; \u2026"

    goto :goto_b5

    :cond_b3
    const-string p2, ""

    :goto_b5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c5
    return v2
.end method

.method public static setLocalEnabled(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    iget-boolean v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->builtin:Z

    if-nez v0, :cond_8d

    .line 776
    iget-boolean v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-nez v0, :cond_74

    .line 777
    iget-boolean v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    if-ne v0, p2, :cond_d

    return-object p1

    .line 778
    :cond_d
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmodAddons;->requireLocal(Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)Ljava/io/File;

    move-result-object v0

    if-eqz p2, :cond_18

    .line 779
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->enabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    goto :goto_1c

    :cond_18
    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->disabledRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 780
    :goto_1c
    new-instance v4, Ljava/io/File;

    iget-object v1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-direct {v4, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 781
    invoke-static {v4}, Lcom/gmodvr/flat/GmodAddons;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_51

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists in the "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3f

    const-string p1, "enabled"

    goto :goto_41

    :cond_3f
    const-string p1, "disabled"

    :goto_41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 782
    :cond_51
    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 785
    new-instance p0, Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object v2, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->kind:Lcom/gmodvr/flat/GmodAddons$Kind;

    iget-object v3, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    iget-wide v8, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->size:J

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v10}, Lcom/gmodvr/flat/GmodAddons$Addon;-><init>(Lcom/gmodvr/flat/GmodAddons$Kind;Ljava/lang/String;Ljava/io/File;ZLorg/json/JSONObject;ZJZ)V

    return-object p0

    .line 776
    :cond_74
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exists both enabled and disabled; remove one first"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 775
    :cond_8d
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is part of GDroid and stays enabled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sizeText(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_18

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_34

    .line 821
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.0f KiB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_50

    .line 822
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f MiB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 823
    :cond_50
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.2f GiB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static treeSize(Ljava/io/File;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_d

    return-wide v1

    .line 157
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 158
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1f

    return-wide v1

    .line 161
    :cond_1f
    array-length v0, p0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v0, :cond_2d

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/gmodvr/flat/GmodAddons;->treeSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_2d
    return-wide v1
.end method

.method public static writeMeta(Ljava/io/File;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/File;

    const-string v1, "workshop.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    :try_start_7
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_25

    const/4 v0, 0x1

    .line 138
    :try_start_d
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_27

    .line 140
    :try_start_21
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    goto :goto_31

    :catchall_27
    move-exception p1

    .line 137
    :try_start_28
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p0

    :try_start_2d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw p1
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_31} :catch_25

    .line 141
    :goto_31
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not encode workshop.json"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

###### Class com.gmodvr.flat.GmodAddons.Addon (com.gmodvr.flat.GmodAddons$Addon)
.class final Lcom/gmodvr/flat/GmodAddons$Addon;
.super Ljava/lang/Object;
.source "GmodAddons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmodAddons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Addon"
.end annotation


# instance fields
.field final builtin:Z

.field final conflict:Z

.field final enabled:Z

.field final folder:Ljava/io/File;

.field final id:Ljava/lang/String;

.field final kind:Lcom/gmodvr/flat/GmodAddons$Kind;

.field final meta:Lorg/json/JSONObject;

.field final size:J


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/GmodAddons$Kind;Ljava/lang/String;Ljava/io/File;ZLorg/json/JSONObject;ZJZ)V
    .registers 10

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->kind:Lcom/gmodvr/flat/GmodAddons$Kind;

    iput-object p2, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    iput-boolean p4, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    iput-object p5, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    .line 76
    iput-boolean p6, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    iput-wide p7, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->size:J

    iput-boolean p9, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->builtin:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;ZLorg/json/JSONObject;ZJ)V
    .registers 18

    .line 72
    sget-object v1, Lcom/gmodvr/flat/GmodAddons$Kind;->WORKSHOP:Lcom/gmodvr/flat/GmodAddons$Kind;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/gmodvr/flat/GmodAddons$Addon;-><init>(Lcom/gmodvr/flat/GmodAddons$Kind;Ljava/lang/String;Ljava/io/File;ZLorg/json/JSONObject;ZJZ)V

    return-void
.end method


# virtual methods
.method public author()Ljava/lang/String;
    .registers 3

    .line 86
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v0, "author"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public local()Z
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->kind:Lcom/gmodvr/flat/GmodAddons$Kind;

    sget-object v0, Lcom/gmodvr/flat/GmodAddons$Kind;->WORKSHOP:Lcom/gmodvr/flat/GmodAddons$Kind;

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public title()Ljava/lang/String;
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    return-object v0

    .line 83
    :cond_15
    iget-object v0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->kind:Lcom/gmodvr/flat/GmodAddons$Kind;

    sget-object v1, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

    if-ne v0, v1, :cond_22

    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->archiveStem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_22
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    return-object p0
.end method

###### Class com.gmodvr.flat.GmodAddons.Group (com.gmodvr.flat.GmodAddons$Group)
.class final Lcom/gmodvr/flat/GmodAddons$Group;
.super Ljava/lang/Object;
.source "GmodAddons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmodAddons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# instance fields
.field final addons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;"
        }
    .end annotation
.end field

.field final id:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/GmodAddons$Group;->addons:Ljava/util/List;

    .line 294
    iput-object p1, p0, Lcom/gmodvr/flat/GmodAddons$Group;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/GmodAddons$Group;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enabled()I
    .registers 3

    .line 296
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Group;->addons:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-boolean v1, v1, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/gmodvr/flat/GmodAddons$Group;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Group;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    :cond_20
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Group;->title:Ljava/lang/String;

    :goto_22
    return-object p0
.end method

.method public size()J
    .registers 5

    .line 297
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Group;->addons:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-wide v2, v2, Lcom/gmodvr/flat/GmodAddons$Addon;->size:J

    add-long/2addr v0, v2

    goto :goto_8

    :cond_18
    return-wide v0
.end method

###### Class com.gmodvr.flat.GmodAddons.Kind (com.gmodvr.flat.GmodAddons$Kind)
.class final enum Lcom/gmodvr/flat/GmodAddons$Kind;
.super Ljava/lang/Enum;
.source "GmodAddons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmodAddons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/GmodAddons$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/GmodAddons$Kind;

.field public static final enum LOCAL_FOLDER:Lcom/gmodvr/flat/GmodAddons$Kind;

.field public static final enum LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

.field public static final enum WORKSHOP:Lcom/gmodvr/flat/GmodAddons$Kind;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/GmodAddons$Kind;
    .registers 3

    .line 44
    sget-object v0, Lcom/gmodvr/flat/GmodAddons$Kind;->WORKSHOP:Lcom/gmodvr/flat/GmodAddons$Kind;

    sget-object v1, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_FOLDER:Lcom/gmodvr/flat/GmodAddons$Kind;

    sget-object v2, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

    filled-new-array {v0, v1, v2}, [Lcom/gmodvr/flat/GmodAddons$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Lcom/gmodvr/flat/GmodAddons$Kind;

    const-string v1, "WORKSHOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/GmodAddons$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/GmodAddons$Kind;->WORKSHOP:Lcom/gmodvr/flat/GmodAddons$Kind;

    .line 48
    new-instance v0, Lcom/gmodvr/flat/GmodAddons$Kind;

    const-string v1, "LOCAL_FOLDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/GmodAddons$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_FOLDER:Lcom/gmodvr/flat/GmodAddons$Kind;

    .line 50
    new-instance v0, Lcom/gmodvr/flat/GmodAddons$Kind;

    const-string v1, "LOCAL_GMA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/GmodAddons$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

    .line 44
    invoke-static {}, Lcom/gmodvr/flat/GmodAddons$Kind;->$values()[Lcom/gmodvr/flat/GmodAddons$Kind;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/GmodAddons$Kind;->$VALUES:[Lcom/gmodvr/flat/GmodAddons$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/GmodAddons$Kind;
    .registers 2

    .line 44
    const-class v0, Lcom/gmodvr/flat/GmodAddons$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/GmodAddons$Kind;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/GmodAddons$Kind;
    .registers 1

    .line 44
    sget-object v0, Lcom/gmodvr/flat/GmodAddons$Kind;->$VALUES:[Lcom/gmodvr/flat/GmodAddons$Kind;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/GmodAddons$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/GmodAddons$Kind;

    return-object v0
.end method

###### Class com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda0 (com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/gmodvr/flat/GmodAddons$Group;

    check-cast p2, Lcom/gmodvr/flat/GmodAddons$Group;

    invoke-static {p1, p2}, Lcom/gmodvr/flat/GmodAddons;->$r8$lambda$MyvFPY115Ygtp5NFmBJihMq3CdA(Lcom/gmodvr/flat/GmodAddons$Group;Lcom/gmodvr/flat/GmodAddons$Group;)I

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda1 (com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda1;
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
    check-cast p1, Lcom/gmodvr/flat/GmodAddons$Addon;

    check-cast p2, Lcom/gmodvr/flat/GmodAddons$Addon;

    invoke-static {p1, p2}, Lcom/gmodvr/flat/GmodAddons;->$r8$lambda$rVKcteBu77naKWCZL3GMkCax6ig(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/GmodAddons$Addon;)I

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda2 (com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda2;
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
    check-cast p1, Lcom/gmodvr/flat/GmodAddons$Addon;

    check-cast p2, Lcom/gmodvr/flat/GmodAddons$Addon;

    invoke-static {p1, p2}, Lcom/gmodvr/flat/GmodAddons;->$r8$lambda$28-X1gK8D36FYzRJuxhlVWhwpk0(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/GmodAddons$Addon;)I

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda3 (com.gmodvr.flat.GmodAddons$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/GmodAddons$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lcom/gmodvr/flat/GmodAddons;->$r8$lambda$SI58psqm5xuThCyv-gYp7w-xNME(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
