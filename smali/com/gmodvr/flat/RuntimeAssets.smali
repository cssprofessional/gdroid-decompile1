###### Class com.gmodvr.flat.RuntimeAssets (com.gmodvr.flat.RuntimeAssets)
.class final Lcom/gmodvr/flat/RuntimeAssets;
.super Ljava/lang/Object;
.source "RuntimeAssets.java"


# static fields
.field private static final PORTAL2_GAMEINFO:Ljava/lang/String; = "\"GameInfo\"\n{\n game \"PORTAL 2\"\n title \"PORTAL 2\"\n gamelogo 0\n SupportsDX8 0\n SupportsXbox360 0\n FileSystem\n {\n  SteamAppId 620\n  ToolsAppId 211\n  SearchPaths\n  {\n   Mod+Mod_Write+Default_Write_Path |gameinfo_path|.\n   Game update\n   Game portal2_dlc2/pak01.vpk\n   Game portal2_dlc2\n   Game portal2_dlc1/pak01.vpk\n   Game portal2_dlc1\n   Game portal2/pak01.vpk\n   Game portal2\n   Game+Platform portal2_platform\n   Game+Platform platform\n  }\n }\n}\n"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assetText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_8
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_26

    const-wide/32 v0, 0x100000

    .line 15
    :try_start_10
    invoke-static {p0, p1, v0, v1}, Lcom/gmodvr/flat/Storage;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    .line 16
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_28

    .line 17
    :try_start_1d
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_26

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_25
    return-object v0

    :catchall_26
    move-exception p1

    goto :goto_32

    :catchall_28
    move-exception v0

    .line 14
    :try_start_29
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p1

    :try_start_2e
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_26

    :goto_32
    if-eqz p0, :cond_3c

    :try_start_34
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    throw p1
.end method

.method public static migrateAudioDefaults(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 158
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    const/16 v2, 0xa

    .line 159
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_1d

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1f

    :cond_1d
    add-int/lit8 v4, v3, 0x1

    :goto_1f
    if-gez v3, :cond_26

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_27

    :cond_26
    move v5, v3

    :goto_27
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lcom/gmodvr/flat/RuntimeAssets;->migrateAudioLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_37

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_37
    move v1, v4

    goto :goto_a

    .line 166
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static migrateAudioDefaults(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 143
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 144
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 145
    invoke-static {v0}, Lcom/gmodvr/flat/RuntimeAssets;->migrateAudioDefaults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p0, v1}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2c

    :catch_2a
    move-exception p0

    goto :goto_32

    .line 148
    :cond_2c
    :goto_2c
    const-string p0, "1\n"

    invoke-static {p1, p0}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_31} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_31} :catch_2a

    goto :goto_39

    .line 151
    :goto_32
    const-string p1, "GDroid"

    const-string v0, "Audio defaults not migrated"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    return-void
.end method

.method private static migrateAudioLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 170
    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    move-object v1, p0

    .line 171
    :goto_15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ""

    if-ne v4, v5, :cond_22

    move-object v0, v6

    .line 172
    :cond_22
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\s+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 173
    array-length v4, v1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_31

    return-object p0

    .line 174
    :cond_31
    aget-object v3, v1, v3

    .line 175
    aget-object v1, v1, v2

    const-string v2, "\""

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 177
    const-string v2, "volume"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-wide v4, 0x3fe999999999999aL    # 0.8

    goto :goto_56

    .line 178
    :cond_49
    const-string v2, "snd_musicvolume"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 181
    :goto_56
    :try_start_56
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    sub-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_5f} :catch_7d

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v1, v1, v4

    if-lez v1, :cond_69

    return-object p0

    .line 185
    :cond_69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \"1\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :catch_7d
    :cond_7d
    return-object p0
.end method

.method public static prepare(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/RuntimeAssets;->prepare(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

.method public static prepare(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, v0}, Lcom/gmodvr/flat/RuntimeAssets;->prepare(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V

    return-void
.end method

.method public static prepare(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const-string v0, "runtime.zip"

    const-string v1, "runtime.sha256"

    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->recoverContent(Landroid/content/Context;)V

    .line 26
    invoke-static {p0}, Lcom/gmodvr/flat/RuntimeAssets;->runtime(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/gmodvr/flat/Storage;->recover(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 30
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_136

    if-eqz v4, :cond_1c

    .line 32
    :try_start_19
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1c

    .line 35
    :catch_1c
    :cond_1c
    invoke-static {p0, v1}, Lcom/gmodvr/flat/RuntimeAssets;->assetText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v4, Ljava/io/File;

    const-string v5, ".identity"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_46

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_136

    .line 39
    :cond_46
    :try_start_46
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_54} :catch_90

    const/high16 v7, 0x40000

    .line 41
    :try_start_56
    new-array v7, v7, [B

    .line 43
    :goto_58
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_66

    invoke-virtual {v4, v7, v3, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_63

    goto :goto_58

    :catchall_63
    move-exception p0

    goto/16 :goto_125

    .line 44
    :cond_66
    :try_start_66
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    array-length v7, v4

    move v8, v3

    :goto_74
    if-ge v8, v7, :cond_93

    aget-byte v9, v4, v8

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v11, "%02x"

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_74

    :catch_90
    move-exception p0

    goto/16 :goto_130

    .line 47
    :cond_93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_9b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_66 .. :try_end_9b} :catch_90

    if-eqz v4, :cond_11d

    .line 51
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "runtime.pending"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b1

    invoke-static {v4}, Lcom/gmodvr/flat/Storage;->delete(Ljava/io/File;)V

    .line 53
    :cond_b1
    invoke-static {v4}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 54
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/32 v7, 0x40000000

    .line 57
    :goto_c9
    :try_start_c9
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 58
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/gmodvr/flat/Storage;->child(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 59
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-static {v9}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    goto :goto_f7

    :catchall_e1
    move-exception p0

    goto :goto_114

    .line 61
    :cond_e3
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 62
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ef
    .catchall {:try_start_c9 .. :try_end_ef} :catchall_e1

    .line 63
    :try_start_ef
    invoke-static {v6, v0, v7, v8}, Lcom/gmodvr/flat/Storage;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    move-result-wide v9
    :try_end_f3
    .catchall {:try_start_ef .. :try_end_f3} :catchall_fb

    sub-long/2addr v7, v9

    .line 64
    :try_start_f4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 66
    :goto_f7
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_fa
    .catchall {:try_start_f4 .. :try_end_fa} :catchall_e1

    goto :goto_c9

    :catchall_fb
    move-exception p0

    .line 62
    :try_start_fc
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_100

    goto :goto_104

    :catchall_100
    move-exception p1

    :try_start_101
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_104
    throw p0
    :try_end_105
    .catchall {:try_start_101 .. :try_end_105} :catchall_e1

    .line 68
    :cond_105
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-static {v4, v2}, Lcom/gmodvr/flat/Storage;->publish(Ljava/io/File;Ljava/io/File;)V

    goto :goto_136

    .line 54
    :goto_114
    :try_start_114
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_118

    goto :goto_11c

    :catchall_118
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11c
    throw p0

    .line 47
    :cond_11d
    :try_start_11d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Runtime package checksum failed. Reinstall the APK."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_125
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11d .. :try_end_125} :catch_90

    :goto_125
    if-eqz v6, :cond_12f

    .line 40
    :try_start_127
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_12b

    goto :goto_12f

    :catchall_12b
    move-exception p1

    :try_start_12c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12f
    :goto_12f
    throw p0
    :try_end_130
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12c .. :try_end_130} :catch_90

    .line 49
    :goto_130
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_136
    :cond_136
    :goto_136
    if-nez p2, :cond_13d

    .line 74
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v0

    goto :goto_145

    :cond_13d
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/gmodvr/flat/GameMod;->userDirectory(Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v0

    .line 75
    :goto_145
    invoke-static {v0}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 76
    invoke-static {v0}, Lcom/gmodvr/flat/Storage;->recoverUser(Ljava/io/File;)V

    .line 77
    new-instance v1, Ljava/io/File;

    const-string v4, "cfg"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 78
    new-instance v1, Ljava/io/File;

    const-string v4, "save"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gmodvr/flat/Storage;->mkdir(Ljava/io/File;)V

    .line 80
    const-string v1, "garrysmod"

    const-string v4, "gameinfo.txt"

    if-eqz p2, :cond_176

    .line 81
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p2, v4, v0, p1}, Lcom/gmodvr/flat/GameMod;->runtimeGameInfo(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-static {v5, p2}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1c4

    .line 83
    :cond_176
    iget-object p2, p1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string v5, "portal2"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18b

    .line 84
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "\"GameInfo\"\n{\n game \"PORTAL 2\"\n title \"PORTAL 2\"\n gamelogo 0\n SupportsDX8 0\n SupportsXbox360 0\n FileSystem\n {\n  SteamAppId 620\n  ToolsAppId 211\n  SearchPaths\n  {\n   Mod+Mod_Write+Default_Write_Path |gameinfo_path|.\n   Game update\n   Game portal2_dlc2/pak01.vpk\n   Game portal2_dlc2\n   Game portal2_dlc1/pak01.vpk\n   Game portal2_dlc1\n   Game portal2/pak01.vpk\n   Game portal2\n   Game+Platform portal2_platform\n   Game+Platform platform\n  }\n }\n}\n"

    invoke-static {p2, v4}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1c4

    .line 85
    :cond_18b
    iget-object p2, p1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c4

    .line 92
    new-instance p2, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v5

    const-string v6, "garrysmod/gameinfo.txt"

    invoke-direct {p2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1bc

    .line 94
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    .line 95
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-static {p2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 94
    invoke-static {v5, v4}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1c4

    .line 93
    :cond_1bc
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing garrysmod/gameinfo.txt in the game folder."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1c4
    :goto_1c4
    new-instance p2, Ljava/io/File;

    const-string v4, "cfg/config.cfg"

    invoke-direct {p2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    new-instance v4, Ljava/io/File;

    const-string v5, "cfg/android_first_run.cfg"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1eb

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 101
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v3, [Ljava/nio/file/CopyOption;

    invoke-static {v2, v4, v5}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 103
    :cond_1eb
    new-instance v2, Ljava/io/File;

    const-string v4, "cfg/.gmodvr_audio_defaults_v2"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/gmodvr/flat/RuntimeAssets;->migrateAudioDefaults(Ljava/io/File;Ljava/io/File;)V

    .line 105
    const-string p2, "settings"

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Generated from the GDroid launcher settings.\nfps_max "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "fps"

    const/16 v5, 0x3c

    .line 107
    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ntouch_enable "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v4, "touch"

    const/4 v5, 0x1

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ntouch_opacity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "touch_opacity"

    const/16 v5, 0x64

    .line 109
    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\ntouch_sensitivity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "sensitivity"

    const/16 v5, 0x1e

    .line 110
    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\ntouch_pitch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v4, "invert"

    invoke-interface {p2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_25f

    const/16 v3, -0x5a

    goto :goto_261

    :cond_25f
    const/16 v3, 0x5a

    :goto_261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nmat_queue_mode 0\nvr_mainmenu 0\nmat_antialias 0\nmat_vsync 1\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    new-instance v3, Ljava/io/File;

    const-string v4, "cfg/android_settings.cfg"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    iget-object p1, p1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a0

    .line 117
    new-instance p1, Ljava/io/File;

    const-string v1, "cfg/android_player_name.cfg"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "gmod_player_name"

    const/4 v2, 0x0

    .line 118
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gmodvr/flat/PlayerName;->config(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-static {p1, p2}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    :try_start_294
    invoke-static {p0, v0}, Lcom/gmodvr/flat/CustomButtons;->install(Landroid/content/Context;Ljava/io/File;)V
    :try_end_297
    .catch Ljava/io/IOException; {:try_start_294 .. :try_end_297} :catch_298
    .catch Ljava/lang/RuntimeException; {:try_start_294 .. :try_end_297} :catch_298

    goto :goto_2a0

    :catch_298
    move-exception p0

    .line 124
    const-string p1, "GDroid"

    const-string p2, "Custom buttons not installed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a0
    :goto_2a0
    return-void
.end method

.method public static runtime(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "runtime"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
