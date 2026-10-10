###### Class com.gmodvr.flat.WorkshopIntegrity (com.gmodvr.flat.WorkshopIntegrity)
.class final Lcom/gmodvr/flat/WorkshopIntegrity;
.super Ljava/lang/Object;
.source "WorkshopIntegrity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/WorkshopIntegrity$Progress;,
        Lcom/gmodvr/flat/WorkshopIntegrity$Entry;
    }
.end annotation


# static fields
.field private static final MAGIC:I = 0x47574931

.field private static final MAX_FILES:I = 0x30d40

.field static final RECEIPT:Ljava/lang/String; = ".gmodvr-files"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private static crc(Ljava/io/File;Ljava/lang/String;JJLcom/gmodvr/flat/WorkshopIntegrity$Progress;)J
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/high16 v1, 0x10000

    .line 140
    new-array v1, v1, [B

    .line 141
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    move-object v4, p0

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-wide/from16 v6, p2

    .line 143
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 144
    invoke-static {}, Lcom/gmodvr/flat/WorkshopIntegrity;->check()V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v3, v3

    add-long/2addr v6, v3

    if-eqz p6, :cond_16

    move-object/from16 v8, p6

    move-object v9, p1

    move-wide v10, v6

    move-wide/from16 v12, p4

    .line 145
    invoke-interface/range {v8 .. v13}, Lcom/gmodvr/flat/WorkshopIntegrity$Progress;->update(Ljava/lang/String;JJ)V
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_32

    goto :goto_16

    :catchall_32
    move-exception v0

    move-object v1, v0

    goto :goto_47

    .line 147
    :cond_35
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-eqz p6, :cond_42

    move-object/from16 v4, p6

    move-object v5, p1

    move-wide/from16 v8, p4

    .line 148
    invoke-interface/range {v4 .. v9}, Lcom/gmodvr/flat/WorkshopIntegrity$Progress;->update(Ljava/lang/String;JJ)V

    .line 149
    :cond_42
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 141
    :goto_47
    :try_start_47
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_50

    :catchall_4b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_50
    throw v1
.end method

.method private static files(Ljava/io/File;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v2}, [Ljava/nio/file/LinkOption;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const-class v2, Ljava/nio/file/FileVisitOption;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    new-instance v3, Lcom/gmodvr/flat/WorkshopIntegrity$1;

    invoke-direct {v3, p0, v0}, Lcom/gmodvr/flat/WorkshopIntegrity$1;-><init>(Ljava/io/File;Ljava/util/List;)V

    const/16 p0, 0x20

    invoke-static {v1, v2, p0, v3}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 39
    invoke-static {}, Lcom/gmodvr/flat/WorkshopIntegrity;->check()V

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    .line 28
    :cond_30
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Addon folder is missing"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verify(Ljava/io/File;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 111
    new-instance v1, Ljava/io/File;

    const-string v2, ".gmodvr-files"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v3}, [Ljava/nio/file/LinkOption;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    return v3

    .line 113
    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/io/InterruptedIOException; {:try_start_1b .. :try_end_2a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2a} :catch_37
    .catch Ljava/lang/ArithmeticException; {:try_start_1b .. :try_end_2a} :catch_37

    .line 114
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_78

    const v4, 0x47574931

    if-eq v1, v4, :cond_3d

    .line 130
    :try_start_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/InterruptedIOException; {:try_start_33 .. :try_end_36} :catch_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljava/lang/ArithmeticException; {:try_start_33 .. :try_end_36} :catch_37

    return v3

    :catch_37
    move v1, v3

    goto/16 :goto_f8

    :catch_3a
    move v1, v3

    goto/16 :goto_f9

    .line 115
    :cond_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_e9

    const v4, 0x30d40

    if-le v1, v4, :cond_4a

    goto/16 :goto_e9

    .line 117
    :cond_4a
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/WorkshopIntegrity;->files(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 118
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_78

    if-eq v5, v1, :cond_58

    .line 130
    :try_start_54
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/InterruptedIOException; {:try_start_54 .. :try_end_57} :catch_3a
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_37
    .catch Ljava/lang/ArithmeticException; {:try_start_54 .. :try_end_57} :catch_37

    return v3

    .line 120
    :cond_58
    :try_start_58
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v5, 0x0

    move-wide v14, v5

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v14

    goto :goto_5f

    :catchall_78
    move-exception v0

    move-object v1, v0

    goto/16 :goto_ee

    .line 121
    :cond_7c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v11, v5

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/gmodvr/flat/WorkshopIntegrity;->check()V

    .line 123
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_99
    .catchall {:try_start_58 .. :try_end_99} :catchall_78

    if-nez v4, :cond_9f

    .line 130
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/io/InterruptedIOException; {:try_start_9b .. :try_end_9e} :catch_3a
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_37
    .catch Ljava/lang/ArithmeticException; {:try_start_9b .. :try_end_9e} :catch_37

    return v3

    .line 124
    :cond_9f
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v16

    .line 125
    invoke-static {v0, v8}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    cmp-long v4, v9, v5

    if-ltz v4, :cond_d2

    .line 126
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v4, v18, v9

    if-nez v4, :cond_d2

    move-wide v5, v9

    move-wide v9, v11

    move-wide v3, v11

    move-wide v11, v14

    move-object/from16 v13, p1

    invoke-static/range {v7 .. v13}, Lcom/gmodvr/flat/WorkshopIntegrity;->crc(Ljava/io/File;Ljava/lang/String;JJLcom/gmodvr/flat/WorkshopIntegrity$Progress;)J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_ca

    goto :goto_d2

    .line 127
    :cond_ca
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v11
    :try_end_ce
    .catchall {:try_start_9f .. :try_end_ce} :catchall_78

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    goto :goto_81

    .line 130
    :cond_d2
    :goto_d2
    :try_start_d2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d5
    .catch Ljava/io/InterruptedIOException; {:try_start_d2 .. :try_end_d5} :catch_d9
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d7
    .catch Ljava/lang/ArithmeticException; {:try_start_d2 .. :try_end_d5} :catch_d7

    const/4 v1, 0x0

    return v1

    :catch_d7
    const/4 v1, 0x0

    goto :goto_f8

    :catch_d9
    const/4 v1, 0x0

    goto :goto_f9

    .line 129
    :cond_db
    :try_start_db
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_df
    .catchall {:try_start_db .. :try_end_df} :catchall_78

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e4

    const/4 v0, 0x1

    goto :goto_e5

    :cond_e4
    const/4 v0, 0x0

    .line 130
    :goto_e5
    :try_start_e5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_e9
    :goto_e9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ec
    .catch Ljava/io/InterruptedIOException; {:try_start_e5 .. :try_end_ec} :catch_d9
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ec} :catch_d7
    .catch Ljava/lang/ArithmeticException; {:try_start_e5 .. :try_end_ec} :catch_d7

    const/4 v1, 0x0

    return v1

    .line 113
    :goto_ee
    :try_start_ee
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f2

    goto :goto_f7

    :catchall_f2
    move-exception v0

    move-object v2, v0

    :try_start_f4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f7
    throw v1
    :try_end_f8
    .catch Ljava/io/InterruptedIOException; {:try_start_f4 .. :try_end_f8} :catch_d9
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f8} :catch_d7
    .catch Ljava/lang/ArithmeticException; {:try_start_f4 .. :try_end_f8} :catch_d7

    :goto_f8
    return v1

    .line 131
    :goto_f9
    invoke-static {}, Lcom/gmodvr/flat/WorkshopIntegrity;->check()V

    return v1
.end method

.method public static verifyInstalled(Lcom/gmodvr/flat/GmodAddons$Addon;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    const-string v2, ".gmodvr-files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v1}, [Ljava/nio/file/LinkOption;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopIntegrity;->verify(Ljava/io/File;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)Z

    move-result p0

    return p0

    :cond_20
    const/4 v0, 0x0

    .line 97
    :try_start_21
    iget-object v1, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-static {v1}, Lcom/gmodvr/flat/WorkshopIntegrity;->files(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->meta:Lorg/json/JSONObject;

    const-string v3, "size"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 99
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_67

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3c

    goto :goto_67

    .line 100
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-static {v7, v6}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    goto :goto_40

    :cond_5b
    cmp-long v1, v4, v2

    if-eqz v1, :cond_60

    return v0

    .line 102
    :cond_60
    iget-object p0, p0, Lcom/gmodvr/flat/GmodAddons$Addon;->folder:Ljava/io/File;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopIntegrity;->write(Ljava/io/File;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_65} :catch_68
    .catch Ljava/lang/ArithmeticException; {:try_start_21 .. :try_end_65} :catch_68

    const/4 p0, 0x1

    return p0

    :cond_67
    :goto_67
    return v0

    .line 105
    :catch_68
    invoke-static {}, Lcom/gmodvr/flat/WorkshopIntegrity;->check()V

    return v0
.end method

.method public static write(Ljava/io/File;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, v0, p1}, Lcom/gmodvr/flat/WorkshopIntegrity;->write(Ljava/io/File;Ljava/util/List;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)V

    return-void
.end method

.method public static write(Ljava/io/File;Ljava/util/List;Lcom/gmodvr/flat/WorkshopIntegrity$Progress;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopIntegrity$Entry;",
            ">;",
            "Lcom/gmodvr/flat/WorkshopIntegrity$Progress;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 49
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/WorkshopIntegrity;->files(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_190

    .line 52
    const-string v3, "Addon changed after extraction"

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_60

    .line 53
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_5a

    .line 54
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 55
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;

    if-eqz v8, :cond_52

    .line 56
    iget-wide v9, v8, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;->size:J

    cmp-long v9, v9, v4

    if-ltz v9, :cond_52

    iget-wide v9, v8, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;->crc:J

    cmp-long v11, v9, v4

    if-ltz v11, :cond_52

    const-wide v11, 0xffffffffL

    cmp-long v9, v9, v11

    if-gtz v9, :cond_52

    iget-object v9, v8, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;->path:Ljava/lang/String;

    .line 57
    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_52

    goto :goto_26

    .line 58
    :cond_52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid extracted addon checksums"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_5a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    const/4 v6, 0x0

    .line 62
    :cond_61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v14, v4

    :goto_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v14

    goto :goto_66

    .line 64
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v1, [Ljava/nio/file/attribute/FileAttribute;

    const-string v9, ".gmodvr-files-"

    const-string v10, ".tmp"

    invoke-static {v7, v9, v10, v8}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v7

    .line 66
    :try_start_95
    new-instance v12, Ljava/io/DataOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-interface {v7}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v12, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a8
    .catchall {:try_start_95 .. :try_end_a8} :catchall_18a

    const v8, 0x47574931

    .line 67
    :try_start_ab
    invoke-virtual {v12, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v12, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_bd
    .catchall {:try_start_ab .. :try_end_bd} :catchall_17c

    if-eqz v8, :cond_14a

    :try_start_bf
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    .line 69
    invoke-static {v0, v13}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 70
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v10
    :try_end_ce
    .catchall {:try_start_bf .. :try_end_ce} :catchall_145

    if-nez v6, :cond_eb

    move-object/from16 v8, v16

    move-object v9, v13

    move-object/from16 p1, v2

    move-wide v1, v10

    move-wide v10, v4

    move-object/from16 v17, v7

    move-object v7, v12

    move-object v0, v13

    move-wide v12, v14

    move-wide/from16 v18, v14

    move-object/from16 v14, p2

    .line 72
    :try_start_e0
    invoke-static/range {v8 .. v14}, Lcom/gmodvr/flat/WorkshopIntegrity;->crc(Ljava/io/File;Ljava/lang/String;JJLcom/gmodvr/flat/WorkshopIntegrity$Progress;)J

    move-result-wide v8

    goto :goto_116

    :catchall_e5
    move-exception v0

    :goto_e6
    move-object v1, v0

    move-object/from16 v2, v17

    goto/16 :goto_180

    :cond_eb
    move-object/from16 p1, v2

    move-object/from16 v17, v7

    move-wide v1, v10

    move-object v7, v12

    move-object v0, v13

    move-wide/from16 v18, v14

    .line 74
    invoke-static {}, Lcom/gmodvr/flat/WorkshopIntegrity;->check()V

    .line 75
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;

    if-eqz v8, :cond_13f

    .line 76
    iget-wide v9, v8, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;->size:J

    cmp-long v9, v9, v1

    if-nez v9, :cond_13f

    .line 77
    iget-wide v14, v8, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;->crc:J

    if-eqz p2, :cond_115

    .line 78
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    move-object/from16 v8, p2

    move-object v9, v0

    move-wide/from16 v12, v18

    invoke-interface/range {v8 .. v13}, Lcom/gmodvr/flat/WorkshopIntegrity$Progress;->update(Ljava/lang/String;JJ)V

    :cond_115
    move-wide v8, v14

    .line 80
    :goto_116
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v10, v10, v1

    if-nez v10, :cond_137

    .line 81
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    long-to-int v0, v8

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 82
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v12, v7

    move-object/from16 v7, v17

    move-wide/from16 v14, v18

    const/4 v1, 0x0

    goto :goto_b9

    .line 80
    :cond_137
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Addon changed while installing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_13f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_145
    .catchall {:try_start_e0 .. :try_end_145} :catchall_e5

    :catchall_145
    move-exception v0

    move-object/from16 v17, v7

    move-object v7, v12

    goto :goto_e6

    :cond_14a
    move-object/from16 v17, v7

    move-object v7, v12

    .line 84
    :try_start_14d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 85
    invoke-static {}, Lcom/gmodvr/flat/WorkshopIntegrity;->check()V

    .line 86
    new-instance v0, Ljava/io/File;

    const-string v1, ".gmodvr-files"

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_16d
    .catchall {:try_start_14d .. :try_end_16d} :catchall_178

    move-object/from16 v2, v17

    :try_start_16f
    invoke-static {v2, v0, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_176

    .line 88
    invoke-static {v2}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    return-void

    :catchall_176
    move-exception v0

    goto :goto_18c

    :catchall_178
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_18c

    :catchall_17c
    move-exception v0

    move-object v2, v7

    move-object v7, v12

    move-object v1, v0

    .line 66
    :goto_180
    :try_start_180
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_183
    .catchall {:try_start_180 .. :try_end_183} :catchall_184

    goto :goto_189

    :catchall_184
    move-exception v0

    move-object v3, v0

    :try_start_186
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_189
    throw v1
    :try_end_18a
    .catchall {:try_start_186 .. :try_end_18a} :catchall_176

    :catchall_18a
    move-exception v0

    move-object v2, v7

    .line 88
    :goto_18c
    invoke-static {v2}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 89
    throw v0

    .line 50
    :cond_190
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Addon has no content files"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.gmodvr.flat.WorkshopIntegrity.AnonymousClass1 (com.gmodvr.flat.WorkshopIntegrity$1)
.class Lcom/gmodvr/flat/WorkshopIntegrity$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "WorkshopIntegrity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/WorkshopIntegrity;->files(Ljava/io/File;)Ljava/util/List;
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
.field final synthetic val$paths:Ljava/util/List;

.field final synthetic val$root:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/List;)V
    .registers 3

    .line 29
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopIntegrity$1;->val$root:Ljava/io/File;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopIntegrity$1;->val$paths:Ljava/util/List;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/gmodvr/flat/WorkshopIntegrity$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_59

    .line 32
    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result p2

    if-eqz p2, :cond_51

    .line 33
    iget-object p2, p0, Lcom/gmodvr/flat/WorkshopIntegrity$1;->val$root:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    sget-char p2, Ljava/io/File;->separatorChar:C

    const/16 v0, 0x2f

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 34
    const-string p2, "workshop.json"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3b

    const-string p2, ".gmodvr-files"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3b

    iget-object p2, p0, Lcom/gmodvr/flat/WorkshopIntegrity$1;->val$paths:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_3b
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopIntegrity$1;->val$paths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const p1, 0x30d40

    if-gt p0, p1, :cond_49

    .line 36
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0

    .line 35
    :cond_49
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Addon contains too many files"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_51
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Addon contains a symbolic link or invalid file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_59
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

###### Class com.gmodvr.flat.WorkshopIntegrity.Entry (com.gmodvr.flat.WorkshopIntegrity$Entry)
.class final Lcom/gmodvr/flat/WorkshopIntegrity$Entry;
.super Ljava/lang/Object;
.source "WorkshopIntegrity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopIntegrity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field final crc:J

.field final path:Ljava/lang/String;

.field final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;->path:Ljava/lang/String;

    iput-wide p2, p0, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;->size:J

    iput-wide p4, p0, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;->crc:J

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopIntegrity.Progress (com.gmodvr.flat.WorkshopIntegrity$Progress)
.class interface abstract Lcom/gmodvr/flat/WorkshopIntegrity$Progress;
.super Ljava/lang/Object;
.source "WorkshopIntegrity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopIntegrity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Progress"
.end annotation


# virtual methods
.method public abstract update(Ljava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
