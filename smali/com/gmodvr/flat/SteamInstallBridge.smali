###### Class com.gmodvr.flat.SteamInstallBridge (com.gmodvr.flat.SteamInstallBridge)
.class public final Lcom/gmodvr/flat/SteamInstallBridge;
.super Ljava/lang/Object;
.source "SteamInstallBridge.java"


# static fields
.field private static final PREFS:Ljava/lang/String; = "steam_content_handoff"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abandon(Landroid/content/Context;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    invoke-static {p0}, Lcom/gmodvr/flat/SteamInstallBridge;->journal(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    invoke-static {p0}, Lcom/gmodvr/flat/SteamInstallBridge;->pending(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 133
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 134
    invoke-static {p1}, Lcom/gmodvr/flat/Storage;->delete(Ljava/io/File;)V

    .line 136
    :cond_14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static install(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-static {p0}, Lcom/gmodvr/flat/SteamInstallBridge;->journal(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 71
    invoke-static {p0}, Lcom/gmodvr/flat/SteamInstallBridge;->pending(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "token"

    if-eqz v3, :cond_2d

    const-string v3, ""

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {p0}, Lcom/gmodvr/flat/SteamInstallBridge;->owner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_2d

    .line 72
    :cond_25
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Another Steam installation needs recovery"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_2d
    :goto_2d
    invoke-static {p2}, Lcom/gmodvr/flat/GameContentProfile;->require(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;

    move-result-object v3

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 80
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->usesSharedContent(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 81
    invoke-static {}, Lcom/gmodvr/flat/Storage;->sharedRoot()Ljava/io/File;

    move-result-object p0

    .line 82
    invoke-static {v3}, Lcom/gmodvr/flat/GameFolder;->installFolder(Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 84
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v5

    goto :goto_5a

    .line 87
    :cond_4e
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v5, "content"

    invoke-direct {v3, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v3

    .line 89
    :cond_5a
    :goto_5a
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 90
    invoke-static {p0}, Lcom/gmodvr/flat/GameMedia;->protectExistingContent(Ljava/io/File;)Ljava/io/File;

    .line 92
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v3, "profile"

    invoke-interface {p3, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_af

    .line 97
    array-length p2, p1

    move p3, v1

    :goto_79
    if-ge p3, p2, :cond_af

    aget-object v3, p1, p3

    .line 98
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 99
    invoke-static {v3}, Lcom/gmodvr/flat/GameMedia;->hide(Ljava/io/File;)V

    .line 100
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 103
    invoke-static {v4}, Lcom/gmodvr/flat/GameMedia;->hide(Ljava/io/File;)V

    .line 104
    invoke-static {v3, v4}, Lcom/gmodvr/flat/SteamInstallBridge;->mergeDirectories(Ljava/io/File;Ljava/io/File;)V

    goto :goto_ad

    .line 106
    :cond_9c
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v0, [Ljava/nio/file/CopyOption;

    sget-object v6, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    :cond_ad
    :goto_ad
    add-int/2addr p3, v0

    goto :goto_79

    .line 112
    :cond_af
    new-instance p1, Ljava/io/File;

    const-string p2, ".sourceandroid-complete"

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "SourceAndroid Steam install\n"

    invoke-static {p1, p0}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 76
    :cond_c7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Steam download payload directory is missing; retry the download"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDepotInstalled(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 34
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_10

    return v0

    .line 38
    :cond_10
    const-string v2, "platform"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 39
    new-instance p0, Ljava/io/File;

    const-string p1, "platform_misc_dir.vpk"

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 40
    :cond_24
    const-string v2, "sourceengine"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_63

    .line 41
    new-instance p1, Ljava/io/File;

    const-string v2, "content_hl2_dir.vpk"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_62

    new-instance p1, Ljava/io/File;

    const-string v2, "content_cstrike_dir.vpk"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_62

    .line 43
    :cond_48
    sget-object p1, Lcom/gmodvr/flat/GameFolder;->GMOD_HL2_PACKS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-static {p0, v1}, Lcom/gmodvr/flat/GameFolder;->hl2PackFolder(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4e

    return v0

    :cond_61
    return v3

    :cond_62
    :goto_62
    return v0

    .line 47
    :cond_63
    invoke-static {}, Lcom/gmodvr/flat/GameContentProfile;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/GameContentProfile;

    .line 48
    iget-object v5, v4, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 49
    new-instance p1, Ljava/io/File;

    const-string v2, "gameinfo.txt"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_a3

    iget-object p1, v4, Lcom/gmodvr/flat/GameContentProfile;->primary:Lcom/gmodvr/flat/ContentComponent;

    if-eqz p1, :cond_a4

    iget-object p1, p1, Lcom/gmodvr/flat/ContentComponent;->coreVpkRelPath:Ljava/lang/String;

    if-eqz p1, :cond_a4

    new-instance p1, Ljava/io/File;

    iget-object v1, v4, Lcom/gmodvr/flat/GameContentProfile;->primary:Lcom/gmodvr/flat/ContentComponent;

    iget-object v1, v1, Lcom/gmodvr/flat/ContentComponent;->coreVpkRelPath:Ljava/lang/String;

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_a4

    :cond_a3
    move v0, v3

    :cond_a4
    return v0

    :cond_a5
    return v3
.end method

.method private static journal(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 21
    const-string v0, "steam_content_handoff"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static mergeDirectories(Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-static {p1}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_c

    return-void

    .line 120
    :cond_c
    array-length v2, p0

    move v3, v1

    :goto_e
    if-ge v3, v2, :cond_38

    aget-object v4, p0, v3

    .line 121
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 123
    invoke-static {v4, v5}, Lcom/gmodvr/flat/SteamInstallBridge;->mergeDirectories(Ljava/io/File;Ljava/io/File;)V

    goto :goto_36

    .line 125
    :cond_25
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v0, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    :goto_36
    add-int/2addr v3, v0

    goto :goto_e

    :cond_38
    return-void
.end method

.method public static owner(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 29
    invoke-static {p0}, Lcom/gmodvr/flat/SteamInstallBridge;->journal(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "profile"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pending(Landroid/content/Context;)Z
    .registers 2

    .line 25
    invoke-static {p0}, Lcom/gmodvr/flat/SteamInstallBridge;->journal(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "token"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static stagedDepots(Lcom/gmodvr/flat/GameContentProfile;Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/GameContentProfile;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ContentComponent;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/gmodvr/flat/GameContentProfile;->depots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/ContentComponent;

    .line 60
    iget-object v3, p0, Lcom/gmodvr/flat/GameContentProfile;->primary:Lcom/gmodvr/flat/ContentComponent;

    if-eq v2, v3, :cond_29

    iget-object v3, v2, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/gmodvr/flat/SteamInstallBridge;->isDepotInstalled(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 61
    iget-object v2, v2, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 63
    :cond_29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2d
    return-object v0
.end method
