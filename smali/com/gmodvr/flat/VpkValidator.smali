###### Class com.gmodvr.flat.VpkValidator (com.gmodvr.flat.VpkValidator)
.class final Lcom/gmodvr/flat/VpkValidator;
.super Ljava/lang/Object;
.source "VpkValidator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static string(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    :goto_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_1f

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/16 v3, 0x1000

    if-ge v2, v3, :cond_17

    .line 64
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 63
    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string v0, "VPK path is too long"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_1f
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validate(Ljava/io/File;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1d0

    .line 13
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    .line 14
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .line 15
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    if-ne v2, v5, :cond_33

    const/16 v6, 0xc

    goto :goto_35

    :cond_33
    const/16 v6, 0x1c

    :goto_35
    const v7, 0x55aa1234

    if-ne v1, v7, :cond_1b5

    if-eq v2, v5, :cond_3f

    const/4 v1, 0x2

    if-ne v2, v1, :cond_1b5

    :cond_3f
    const-wide/32 v1, 0x4000000

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1b5

    int-to-long v1, v6

    add-long v5, v3, v1

    .line 17
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gtz v7, :cond_1b5

    long-to-int v3, v3

    .line 19
    new-array v3, v3, [B

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 21
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 22
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_69
    .catchall {:try_start_7 .. :try_end_69} :catchall_da

    .line 26
    :cond_69
    :try_start_69
    invoke-static {v1}, Lcom/gmodvr/flat/VpkValidator;->string(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-wide/16 v7, 0x0

    if-nez v3, :cond_e8

    .line 28
    :cond_75
    invoke-static {v1}, Lcom/gmodvr/flat/VpkValidator;->string(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_69

    .line 30
    :cond_7f
    :goto_7f
    invoke-static {v1}, Lcom/gmodvr/flat/VpkValidator;->string(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_75

    .line 31
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 32
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    .line 33
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v4

    .line 34
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v9

    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v11

    .line 36
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    invoke-static {v13}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v13

    const v14, 0xffff

    if-ne v13, v14, :cond_e0

    .line 37
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v13

    invoke-static {v13, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    cmp-long v3, v11, v7

    if-lez v3, :cond_7f

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v9, Lcom/gmodvr/flat/VpkValidator$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/gmodvr/flat/VpkValidator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3, v4, v9}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_7f

    :catchall_da
    move-exception p0

    goto/16 :goto_1eb

    :catch_dd
    move-exception v1

    goto/16 :goto_19a

    .line 36
    :cond_e0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid VPK record"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_e8
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1
    :try_end_ec
    .catch Ljava/nio/BufferUnderflowException; {:try_start_69 .. :try_end_ec} :catch_dd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_ec} :catch_dd
    .catch Ljava/lang/ArithmeticException; {:try_start_69 .. :try_end_ec} :catch_dd
    .catchall {:try_start_69 .. :try_end_ec} :catchall_da

    if-nez v1, :cond_192

    .line 46
    :try_start_ee
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v3, "_dir.vpk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18a

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_186

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v9, 0x7fff

    if-ne v4, v9, :cond_129

    move-object v4, p0

    goto :goto_142

    :cond_129
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v12, "%s_%03d.vpk"

    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    :goto_142
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_15a

    move-wide v12, v5

    goto :goto_15b

    :cond_15a
    move-wide v12, v7

    :goto_15b
    add-long/2addr v10, v12

    .line 53
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_16b

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-ltz v3, :cond_16b

    goto :goto_10d

    .line 54
    :cond_16b
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing or incomplete archive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_186
    .catchall {:try_start_ee .. :try_end_186} :catchall_da

    .line 56
    :cond_186
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 47
    :cond_18a
    :try_start_18a
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Expected a VPK directory file"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_192
    .catchall {:try_start_18a .. :try_end_192} :catchall_da

    .line 42
    :cond_192
    :try_start_192
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected VPK directory data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_192 .. :try_end_19a} :catch_dd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_192 .. :try_end_19a} :catch_dd
    .catch Ljava/lang/ArithmeticException; {:try_start_192 .. :try_end_19a} :catch_dd
    .catchall {:try_start_192 .. :try_end_19a} :catchall_da

    .line 44
    :goto_19a
    :try_start_19a
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Corrupt VPK tree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 18
    :cond_1b5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid VPK directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1d0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated VPK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1eb
    .catchall {:try_start_19a .. :try_end_1eb} :catchall_da

    .line 11
    :goto_1eb
    :try_start_1eb
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_1ef

    goto :goto_1f3

    :catchall_1ef
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f3
    throw p0
.end method

.method public static validateContent(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/VpkValidator;->validateContent(Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

.method public static validateContent(Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const-string v0, "Missing folder: "

    const-string v1, "portal2"

    if-eqz p1, :cond_5a

    iget-object v2, p1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_5a

    .line 81
    :cond_f
    iget-object p1, p1, Lcom/gmodvr/flat/GameContentProfile;->depots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/ContentComponent;

    .line 82
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 84
    iget-object v2, v1, Lcom/gmodvr/flat/ContentComponent;->coreVpkRelPath:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 85
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lcom/gmodvr/flat/ContentComponent;->coreVpkRelPath:Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v2}, Lcom/gmodvr/flat/VpkValidator;->validate(Ljava/io/File;)V

    goto :goto_15

    .line 83
    :cond_43
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/gmodvr/flat/ContentComponent;->dirName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_5a
    :goto_5a
    const-string p1, "update"

    const-string v2, "portal2_dlc1"

    const-string v3, "portal2_dlc2"

    const-string v4, "portal2_platform"

    filled-new-array {v1, v2, v3, p1, v4}, [Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    move v6, v5

    :goto_68
    const/4 v7, 0x5

    if-ge v6, v7, :cond_a7

    aget-object v7, p1, v6

    .line 72
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "platform"

    if-eqz v9, :cond_85

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_85

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    :cond_85
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_8e

    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    :cond_8e
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_a7
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    :goto_ab
    const/4 v0, 0x3

    if-ge v5, v0, :cond_d2

    aget-object v0, p1, v5

    .line 77
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/pak01_dir.vpk"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-static {v1}, Lcom/gmodvr/flat/VpkValidator;->validate(Ljava/io/File;)V

    :cond_cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_ab

    .line 90
    :cond_d2
    invoke-static {p0}, Lcom/gmodvr/flat/VpkValidator;->validateTree(Ljava/io/File;)V

    return-void
.end method

.method public static validateTree(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 100
    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_29

    aget-object v2, p0, v1

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {v2}, Lcom/gmodvr/flat/VpkValidator;->validateTree(Ljava/io/File;)V

    goto :goto_26

    .line 102
    :cond_17
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_dir.vpk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 103
    :try_start_23
    invoke-static {v2}, Lcom/gmodvr/flat/VpkValidator;->validate(Ljava/io/File;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_29
    return-void
.end method

###### Class com.gmodvr.flat.VpkValidator$$ExternalSyntheticLambda0 (com.gmodvr.flat.VpkValidator$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/VpkValidator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
