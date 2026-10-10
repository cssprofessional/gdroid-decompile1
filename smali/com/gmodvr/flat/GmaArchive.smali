###### Class com.gmodvr.flat.GmaArchive (com.gmodvr.flat.GmaArchive)
.class final Lcom/gmodvr/flat/GmaArchive;
.super Ljava/lang/Object;
.source "GmaArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/GmaArchive$Format;,
        Lcom/gmodvr/flat/GmaArchive$Info;,
        Lcom/gmodvr/flat/GmaArchive$PathPolicy;,
        Lcom/gmodvr/flat/GmaArchive$Entry;,
        Lcom/gmodvr/flat/GmaArchive$IndexInput;,
        Lcom/gmodvr/flat/GmaArchive$DecodedArchive;,
        Lcom/gmodvr/flat/GmaArchive$Files;,
        Lcom/gmodvr/flat/GmaArchive$Writer;
    }
.end annotation


# static fields
.field static final HEADER_READ_LIMIT:I = 0x40000

.field static final MAGIC:I = 0x44414d47

.field static final MAX_DICTIONARY_KIB:I = 0x20000

.field static final MAX_FILES:I = 0x30d40

.field static final MAX_TOTAL:J = 0x1900000000L

.field private static final RESERVE:J = 0x20000000L

.field static final SOURCE_LZMA_MAGIC:I = 0x414d5a4c


# direct methods
.method public static bridge synthetic -$$Nest$smcopy(Ljava/io/InputStream;Ljava/io/File;Ljava/util/zip/CRC32;J)J
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/GmaArchive;->copy(Ljava/io/InputStream;Ljava/io/File;Ljava/util/zip/CRC32;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static archiveStem(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 110
    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->isArchiveName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x2e

    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/File;Ljava/util/zip/CRC32;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 438
    invoke-static/range {v0 .. v5}, Lcom/gmodvr/flat/GmaArchive;->copy(Ljava/io/InputStream;Ljava/io/File;Ljava/util/zip/CRC32;JLjava/util/function/LongConsumer;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/File;Ljava/util/zip/CRC32;JLjava/util/function/LongConsumer;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 p1, 0x10000

    .line 444
    :try_start_7
    new-array p1, p1, [B

    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 446
    :cond_c
    :goto_c
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_47

    .line 447
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_41

    int-to-long v6, v5

    add-long/2addr v3, v6

    cmp-long v8, p3, v1

    if-ltz v8, :cond_32

    cmp-long v8, v3, p3

    if-gtz v8, :cond_28

    goto :goto_32

    .line 449
    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string p1, "GMA entry size mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_30
    move-exception p0

    goto :goto_52

    :cond_32
    :goto_32
    const/4 v8, 0x0

    .line 450
    invoke-virtual {v0, p1, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V

    if-eqz p2, :cond_3b

    .line 451
    invoke-virtual {p2, p1, v8, v5}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_3b
    if-eqz p5, :cond_c

    .line 452
    invoke-interface {p5, v6, v7}, Ljava/util/function/LongConsumer;->accept(J)V

    goto :goto_c

    .line 447
    :cond_41
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 454
    :cond_47
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_30

    .line 455
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-wide v3

    .line 443
    :goto_52
    :try_start_52
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw p0
.end method

.method public static decompress(Ljava/io/File;ZLjava/io/File;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 527
    invoke-static {p0, p1, p2, v0}, Lcom/gmodvr/flat/GmaArchive;->decompress(Ljava/io/File;ZLjava/io/File;Ljava/util/function/LongConsumer;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static decompress(Ljava/io/File;ZLjava/io/File;Ljava/util/function/LongConsumer;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 531
    invoke-static {p0, p1}, Lcom/gmodvr/flat/GmaArchive;->openLzma(Ljava/io/File;Z)Lcom/gmodvr/flat/GmaArchive$DecodedArchive;

    move-result-object p0

    .line 532
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 533
    iget-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->size:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_30

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->size:J

    const-wide/32 v6, 0x20000000

    add-long/2addr v4, v6

    cmp-long p1, v0, v4

    if-ltz p1, :cond_26

    goto :goto_30

    .line 534
    :cond_26
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not enough free space to unpack the addon"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2e
    move-exception p1

    goto :goto_52

    .line 535
    :cond_30
    :goto_30
    iget-object v4, p0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->input:Ljava/io/InputStream;

    iget-wide v7, p0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->size:J

    const/4 v6, 0x0

    move-object v5, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/gmodvr/flat/GmaArchive;->copy(Ljava/io/InputStream;Ljava/io/File;Ljava/util/zip/CRC32;JLjava/util/function/LongConsumer;)J

    move-result-wide p1

    .line 536
    iget-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->size:J

    cmp-long p3, v0, v2

    if-ltz p3, :cond_4e

    cmp-long p3, p1, v0

    if-nez p3, :cond_46

    goto :goto_4e

    :cond_46
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Compressed GMA is truncated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_2e

    .line 538
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->close()V

    return-wide p1

    :goto_52
    if-eqz p0, :cond_5c

    .line 531
    :try_start_54
    invoke-virtual {p0}, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    throw p1
.end method

.method public static directoryWriter(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Writer;
    .registers 2

    .line 414
    new-instance v0, Lcom/gmodvr/flat/GmaArchive$1;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/GmaArchive$1;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static extract(Ljava/io/File;Lcom/gmodvr/flat/GmaArchive$PathPolicy;Lcom/gmodvr/flat/GmaArchive$Writer;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 371
    invoke-static {p0, p1, p2, v0}, Lcom/gmodvr/flat/GmaArchive;->extract(Ljava/io/File;Lcom/gmodvr/flat/GmaArchive$PathPolicy;Lcom/gmodvr/flat/GmaArchive$Writer;Ljava/util/function/LongConsumer;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/io/File;Lcom/gmodvr/flat/GmaArchive$PathPolicy;Lcom/gmodvr/flat/GmaArchive$Writer;Ljava/util/function/LongConsumer;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 376
    :try_start_7
    invoke-static {v0, p1}, Lcom/gmodvr/flat/GmaArchive;->parse(Ljava/io/RandomAccessFile;Lcom/gmodvr/flat/GmaArchive$PathPolicy;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0

    .line 377
    invoke-static {v0, p0, p3}, Lcom/gmodvr/flat/GmaArchive;->verifyArchiveCrc(Ljava/io/RandomAccessFile;Lcom/gmodvr/flat/GmaArchive$Info;Ljava/util/function/LongConsumer;)V

    .line 378
    iget-wide v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->dataStart:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 379
    iget-object p1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmodvr/flat/GmaArchive$Entry;

    .line 380
    iget-wide v1, p3, Lcom/gmodvr/flat/GmaArchive$Entry;->size:J

    invoke-static {v0, v1, v2}, Lcom/gmodvr/flat/GmaArchive;->slice(Ljava/io/RandomAccessFile;J)Ljava/io/InputStream;

    move-result-object v5

    .line 381
    iget-object v4, p3, Lcom/gmodvr/flat/GmaArchive$Entry;->path:Ljava/lang/String;

    if-nez v4, :cond_37

    iget-wide v1, p3, Lcom/gmodvr/flat/GmaArchive$Entry;->size:J

    invoke-interface {p2, v5, v1, v2}, Lcom/gmodvr/flat/GmaArchive$Writer;->skip(Ljava/io/InputStream;J)V

    goto :goto_19

    :catchall_35
    move-exception p0

    goto :goto_52

    .line 382
    :cond_37
    iget-wide v6, p3, Lcom/gmodvr/flat/GmaArchive$Entry;->size:J

    iget-wide v1, p3, Lcom/gmodvr/flat/GmaArchive$Entry;->crc:J

    const-wide/16 v8, 0x0

    cmp-long p3, v1, v8

    if-nez p3, :cond_44

    const/4 p3, 0x0

    :goto_42
    move-object v8, p3

    goto :goto_49

    :cond_44
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_42

    :goto_49
    move-object v3, p2

    invoke-interface/range {v3 .. v8}, Lcom/gmodvr/flat/GmaArchive$Writer;->write(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_35

    goto :goto_19

    .line 385
    :cond_4e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    .line 375
    :goto_52
    :try_start_52
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw p0
.end method

.method public static extract(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmaArchive$PathPolicy;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 390
    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->format(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Format;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->UNKNOWN:Lcom/gmodvr/flat/GmaArchive$Format;

    if-eq v0, v1, :cond_58

    .line 392
    invoke-static {p1}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 393
    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->RAW:Lcom/gmodvr/flat/GmaArchive$Format;

    if-ne v0, v1, :cond_18

    invoke-static {p1}, Lcom/gmodvr/flat/GmaArchive;->directoryWriter(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Writer;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/gmodvr/flat/GmaArchive;->extract(Ljava/io/File;Lcom/gmodvr/flat/GmaArchive$PathPolicy;Lcom/gmodvr/flat/GmaArchive$Writer;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0

    return-object p0

    .line 394
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_20

    move-object v1, p1

    goto :goto_24

    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".steam-gma-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v1, v2}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 397
    :try_start_3d
    sget-object v2, Lcom/gmodvr/flat/GmaArchive$Format;->SOURCE_LZMA:Lcom/gmodvr/flat/GmaArchive$Format;

    if-ne v0, v2, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    invoke-static {p0, v0, v1}, Lcom/gmodvr/flat/GmaArchive;->decompress(Ljava/io/File;ZLjava/io/File;)J

    .line 398
    invoke-static {p1}, Lcom/gmodvr/flat/GmaArchive;->directoryWriter(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Writer;

    move-result-object p0

    invoke-static {v1, p2, p0}, Lcom/gmodvr/flat/GmaArchive;->extract(Ljava/io/File;Lcom/gmodvr/flat/GmaArchive$PathPolicy;Lcom/gmodvr/flat/GmaArchive$Writer;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_53

    .line 399
    invoke-static {v1}, Lcom/gmodvr/flat/GmaArchive$Files;->deleteQuietly(Ljava/io/File;)V

    return-object p0

    :catchall_53
    move-exception p0

    invoke-static {v1}, Lcom/gmodvr/flat/GmaArchive$Files;->deleteQuietly(Ljava/io/File;)V

    throw p0

    .line 391
    :cond_58
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not a GMA addon"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractAddon(Ljava/io/File;Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 409
    new-instance v0, Lcom/gmodvr/flat/GmaArchive$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gmodvr/flat/GmaArchive$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/gmodvr/flat/GmaArchive;->extract(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmaArchive$PathPolicy;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Format;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    goto :goto_5d

    .line 116
    :cond_11
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    :try_start_18
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    const v2, 0x44414d47

    if-ne v1, v2, :cond_2d

    .line 118
    sget-object p0, Lcom/gmodvr/flat/GmaArchive$Format;->RAW:Lcom/gmodvr/flat/GmaArchive$Format;
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_2b

    .line 124
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_2b
    move-exception p0

    goto :goto_54

    :cond_2d
    const v2, 0x414d5a4c

    if-ne v1, v2, :cond_38

    .line 119
    :try_start_32
    sget-object p0, Lcom/gmodvr/flat/GmaArchive$Format;->SOURCE_LZMA:Lcom/gmodvr/flat/GmaArchive$Format;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_2b

    .line 124
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :cond_38
    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_4e

    .line 122
    :try_start_3e
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x11

    cmp-long p0, v1, v3

    if-ltz p0, :cond_4e

    sget-object p0, Lcom/gmodvr/flat/GmaArchive$Format;->LZMA_ALONE:Lcom/gmodvr/flat/GmaArchive$Format;
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_2b

    .line 124
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    .line 123
    :cond_4e
    :try_start_4e
    sget-object p0, Lcom/gmodvr/flat/GmaArchive$Format;->UNKNOWN:Lcom/gmodvr/flat/GmaArchive$Format;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_2b

    .line 124
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    .line 116
    :goto_54
    :try_start_54
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw p0

    .line 115
    :cond_5d
    :goto_5d
    sget-object p0, Lcom/gmodvr/flat/GmaArchive$Format;->UNKNOWN:Lcom/gmodvr/flat/GmaArchive$Format;

    return-object p0
.end method

.method public static gmodPolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamWorkshop;->contentPath(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static indexString(Ljava/io/DataInputStream;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-gt v1, p1, :cond_1f

    .line 327
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    if-nez v2, :cond_19

    .line 328
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 329
    :cond_19
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 331
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid Workshop archive string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isArchiveName(Ljava/lang/String;)Z
    .registers 2

    .line 105
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 106
    const-string v0, ".gma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, ".gm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, ".bin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method private static openArchive(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$DecodedArchive;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->format(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Format;

    move-result-object v0

    .line 470
    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->RAW:Lcom/gmodvr/flat/GmaArchive$Format;

    if-ne v0, v1, :cond_1c

    .line 471
    new-instance v0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;-><init>(Ljava/io/InputStream;J)V

    return-object v0

    .line 472
    :cond_1c
    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->UNKNOWN:Lcom/gmodvr/flat/GmaArchive$Format;

    if-eq v0, v1, :cond_2c

    .line 473
    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->SOURCE_LZMA:Lcom/gmodvr/flat/GmaArchive$Format;

    if-ne v0, v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    invoke-static {p0, v0}, Lcom/gmodvr/flat/GmaArchive;->openLzma(Ljava/io/File;Z)Lcom/gmodvr/flat/GmaArchive$DecodedArchive;

    move-result-object p0

    return-object p0

    .line 472
    :cond_2c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Not a GMA addon"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static openLzma(Ljava/io/File;Z)Lcom/gmodvr/flat/GmaArchive$DecodedArchive;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 481
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 482
    const-string v2, "Unsupported compressed GMA header"

    if-eqz p1, :cond_46

    .line 484
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x11

    cmp-long v3, v3, v5

    if-ltz v3, :cond_40

    const-wide/16 v3, 0x4

    .line 485
    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v1}, Lcom/gmodvr/flat/GmaArchive;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v3

    .line 486
    invoke-static {v1}, Lcom/gmodvr/flat/GmaArchive;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v7

    .line 487
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v9

    .line 488
    invoke-static {v1}, Lcom/gmodvr/flat/GmaArchive;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v10

    .line 489
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v12

    sub-long/2addr v12, v5

    cmp-long v7, v7, v12

    if-nez v7, :cond_36

    goto :goto_6f

    :cond_36
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3c
    move-exception v0

    move-object v2, v0

    goto/16 :goto_ee

    .line 484
    :cond_40
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 493
    :cond_46
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0xd

    cmp-long v3, v3, v5

    if-ltz v3, :cond_e8

    .line 494
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v9

    .line 495
    invoke-static {v1}, Lcom/gmodvr/flat/GmaArchive;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v10

    .line 496
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v3
    :try_end_60
    .catchall {:try_start_d .. :try_end_60} :catchall_3c

    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-ltz v7, :cond_e0

    const-wide v7, 0x1900000000L

    cmp-long v7, v3, v7

    if-gtz v7, :cond_e0

    .line 500
    :goto_6f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    and-int/lit16 v1, v9, 0xff

    const/16 v7, 0xe1

    if-ge v1, v7, :cond_da

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v10, v7

    if-gtz v1, :cond_da

    long-to-int v1, v10

    .line 502
    invoke-static {v1, v9}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(IB)I

    move-result v7

    const/high16 v8, 0x20000

    if-gt v7, v8, :cond_da

    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    if-ltz v2, :cond_99

    const-wide/16 v1, 0x1000

    .line 505
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    :cond_99
    move/from16 v17, v1

    .line 506
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-wide v10, v7

    :goto_a6
    cmp-long v0, v10, v5

    if-gez v0, :cond_be

    sub-long v12, v5, v10

    .line 510
    :try_start_ac
    invoke-virtual {v1, v12, v13}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v12

    cmp-long v0, v12, v7

    if-lez v0, :cond_b6

    add-long/2addr v10, v12

    goto :goto_a6

    .line 511
    :cond_b6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catch_bc
    move-exception v0

    goto :goto_d6

    .line 514
    :cond_be
    new-instance v0, Lorg/tukaani/xz/LZMAInputStream;

    move-object v12, v0

    move-object v13, v1

    move-wide v14, v3

    move/from16 v16, v9

    invoke-direct/range {v12 .. v17}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;JBI)V

    .line 517
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMAInputStream;->enableRelaxedEndCondition()V

    .line 518
    new-instance v2, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5, v3, v4}, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;-><init>(Ljava/io/InputStream;J)V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_d5} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_d5} :catch_bc

    return-object v2

    .line 520
    :goto_d6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 521
    throw v0

    .line 503
    :cond_da
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_e0
    :try_start_e0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid compressed GMA size"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_e8
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_ee
    .catchall {:try_start_e0 .. :try_end_ee} :catchall_3c

    .line 481
    :goto_ee
    :try_start_ee
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f2

    goto :goto_f7

    :catchall_f2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f7
    throw v2
.end method

.method public static parse(Ljava/io/RandomAccessFile;Lcom/gmodvr/flat/GmaArchive$PathPolicy;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 131
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x5

    cmp-long v3, v1, v3

    if-ltz v3, :cond_12d

    .line 132
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmaArchive;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v3

    const-wide/32 v5, 0x44414d47

    cmp-long v3, v3, v5

    if-nez v3, :cond_12d

    .line 133
    new-instance v3, Lcom/gmodvr/flat/GmaArchive$Info;

    invoke-direct {v3}, Lcom/gmodvr/flat/GmaArchive$Info;-><init>()V

    .line 134
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v4

    iput v4, v3, Lcom/gmodvr/flat/GmaArchive$Info;->version:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_125

    const/4 v6, 0x3

    if-gt v4, v6, :cond_125

    .line 136
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/gmodvr/flat/GmaArchive$Info;->steamId:J

    .line 137
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/gmodvr/flat/GmaArchive$Info;->timestamp:J

    .line 138
    iget v4, v3, Lcom/gmodvr/flat/GmaArchive$Info;->version:I

    const/16 v6, 0x1000

    if-le v4, v5, :cond_60

    const/4 v4, 0x0

    .line 141
    :goto_43
    invoke-static {v0, v1, v2, v6}, Lcom/gmodvr/flat/GmaArchive;->string(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_60

    .line 142
    iget-object v8, v3, Lcom/gmodvr/flat/GmaArchive$Info;->required:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v5

    const/16 v7, 0x400

    if-gt v4, v7, :cond_58

    goto :goto_43

    .line 143
    :cond_58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid GMA required-content list"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    const/high16 v4, 0x10000

    .line 146
    invoke-static {v0, v1, v2, v4}, Lcom/gmodvr/flat/GmaArchive;->string(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gmodvr/flat/GmaArchive$Info;->title:Ljava/lang/String;

    .line 147
    invoke-static {v0, v1, v2, v4}, Lcom/gmodvr/flat/GmaArchive;->string(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/gmodvr/flat/GmaArchive$Info;->rawDescription:Ljava/lang/String;

    .line 148
    invoke-static {v0, v1, v2, v4}, Lcom/gmodvr/flat/GmaArchive;->string(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gmodvr/flat/GmaArchive$Info;->author:Ljava/lang/String;

    .line 149
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    iput v4, v3, Lcom/gmodvr/flat/GmaArchive$Info;->addonVersion:I

    .line 150
    invoke-static {v3}, Lcom/gmodvr/flat/GmaArchive;->parseDescription(Lcom/gmodvr/flat/GmaArchive$Info;)V

    const-wide/16 v4, 0x0

    move-wide v7, v4

    .line 154
    :goto_84
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmaArchive;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-eqz v11, :cond_eb

    .line 155
    iget-object v11, v3, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const v12, 0x30d40

    if-ge v11, v12, :cond_e3

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    const-wide/32 v13, 0x4000000

    cmp-long v11, v11, v13

    if-gtz v11, :cond_e3

    .line 157
    invoke-static {v0, v1, v2, v6}, Lcom/gmodvr/flat/GmaArchive;->string(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v11, p1

    .line 158
    invoke-interface {v11, v14}, Lcom/gmodvr/flat/GmaArchive$PathPolicy;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 159
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v20

    .line 160
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmaArchive;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v18

    cmp-long v12, v20, v4

    if-ltz v12, :cond_db

    const-wide v12, 0x1900000000L

    sub-long/2addr v12, v7

    cmp-long v12, v20, v12

    if-gtz v12, :cond_db

    .line 162
    new-instance v13, Lcom/gmodvr/flat/GmaArchive$Entry;

    long-to-int v9, v9

    move-object v12, v13

    move-object v10, v13

    move v13, v9

    move-wide/from16 v16, v20

    invoke-direct/range {v12 .. v19}, Lcom/gmodvr/flat/GmaArchive$Entry;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 163
    iput-wide v7, v10, Lcom/gmodvr/flat/GmaArchive$Entry;->offset:J

    add-long v7, v7, v20

    .line 165
    iget-object v9, v3, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 161
    :cond_db
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid GMA file size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_e3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "GMA file table is too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_eb
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    iput-wide v9, v3, Lcom/gmodvr/flat/GmaArchive$Info;->dataStart:J

    .line 168
    iput-wide v7, v3, Lcom/gmodvr/flat/GmaArchive$Info;->dataLength:J

    sub-long v11, v1, v9

    cmp-long v6, v7, v11

    if-gtz v6, :cond_11d

    sub-long/2addr v1, v9

    sub-long/2addr v1, v7

    cmp-long v4, v1, v4

    const-wide/16 v5, 0x4

    if-eqz v4, :cond_10e

    cmp-long v4, v1, v5

    if-nez v4, :cond_106

    goto :goto_10e

    .line 171
    :cond_106
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid GMA data boundary"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10e
    :goto_10e
    cmp-long v1, v1, v5

    if-nez v1, :cond_11c

    add-long/2addr v9, v7

    .line 173
    invoke-virtual {v0, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 174
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmaArchive;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/gmodvr/flat/GmaArchive$Info;->storedCrc:J

    :cond_11c
    return-object v3

    .line 169
    :cond_11d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "GMA data is truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported GMA version"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_12d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid GMA addon"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseDescription(Lcom/gmodvr/flat/GmaArchive$Info;)V
    .registers 6

    .line 181
    const-string v0, ""

    iget-object v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->rawDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->description:Ljava/lang/String;

    .line 182
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    return-void

    .line 185
    :cond_13
    :try_start_13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    const-string v1, "description"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->description:Ljava/lang/String;

    .line 187
    const-string v1, "type"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->type:Ljava/lang/String;

    .line 188
    const-string v1, "tags"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_69

    const/4 v2, 0x0

    .line 190
    :goto_37
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_69

    const/16 v3, 0x20

    if-ge v2, v3, :cond_69

    .line 191
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_62

    iget-object v4, p0, Lcom/gmodvr/flat/GmaArchive$Info;->tags:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    iget-object v4, p0, Lcom/gmodvr/flat/GmaArchive$Info;->tags:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_62} :catch_65

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 196
    :catch_65
    iget-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->rawDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->description:Ljava/lang/String;

    :cond_69
    return-void
.end method

.method private static readHeader(Lcom/gmodvr/flat/GmaArchive$IndexInput;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x40000

    .line 267
    iput-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->limit:J

    .line 268
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    const v1, 0x44414d47

    if-ne p0, v1, :cond_8e

    .line 270
    new-instance p0, Lcom/gmodvr/flat/GmaArchive$Info;

    invoke-direct {p0}, Lcom/gmodvr/flat/GmaArchive$Info;-><init>()V

    .line 271
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->version:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_86

    const/4 v3, 0x3

    if-gt v1, v3, :cond_86

    .line 273
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/gmodvr/flat/GmaArchive$Info;->steamId:J

    .line 274
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/gmodvr/flat/GmaArchive$Info;->timestamp:J

    .line 275
    iget v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->version:I

    if-le v1, v2, :cond_64

    :goto_40
    const/16 v1, 0x1000

    .line 277
    invoke-static {v0, v1}, Lcom/gmodvr/flat/GmaArchive;->indexString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 278
    iget-object v2, p0, Lcom/gmodvr/flat/GmaArchive$Info;->required:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->required:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x400

    if-gt v1, v2, :cond_5c

    goto :goto_40

    :cond_5c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid GMA required-content list"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    const/high16 v1, 0x10000

    .line 282
    invoke-static {v0, v1}, Lcom/gmodvr/flat/GmaArchive;->indexString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/GmaArchive$Info;->title:Ljava/lang/String;

    .line 283
    invoke-static {v0, v1}, Lcom/gmodvr/flat/GmaArchive;->indexString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/GmaArchive$Info;->rawDescription:Ljava/lang/String;

    .line 284
    invoke-static {v0, v1}, Lcom/gmodvr/flat/GmaArchive;->indexString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/GmaArchive$Info;->author:Ljava/lang/String;

    .line 285
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    iput v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->addonVersion:I

    .line 286
    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->parseDescription(Lcom/gmodvr/flat/GmaArchive$Info;)V

    return-object p0

    .line 272
    :cond_86
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unsupported GMA version"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_8e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Not a GMA addon"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readHeader(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/gmodvr/flat/GmaArchive$IndexInput;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/gmodvr/flat/GmaArchive$IndexInput;-><init>(Ljava/io/InputStream;)V

    .line 255
    :try_start_f
    invoke-static {v0}, Lcom/gmodvr/flat/GmaArchive;->readHeader(Lcom/gmodvr/flat/GmaArchive$IndexInput;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    .line 256
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_17
    move-exception p0

    .line 254
    :try_start_18
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw p0
.end method

.method public static readHeaderAny(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->openArchive(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$DecodedArchive;

    move-result-object p0

    .line 262
    :try_start_4
    new-instance v0, Lcom/gmodvr/flat/GmaArchive$IndexInput;

    iget-object v1, p0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->input:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/gmodvr/flat/GmaArchive$IndexInput;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/gmodvr/flat/GmaArchive;->readHeader(Lcom/gmodvr/flat/GmaArchive$IndexInput;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 263
    invoke-virtual {p0}, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->close()V

    return-object v0

    :catchall_13
    move-exception v0

    if-eqz p0, :cond_1e

    .line 261
    :try_start_16
    invoke-virtual {p0}, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    throw v0
.end method

.method public static readIndex(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmaArchive;->format(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Format;

    move-result-object v0

    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->RAW:Lcom/gmodvr/flat/GmaArchive$Format;

    if-ne v0, v1, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmaArchive;->readInfo(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object v0

    return-object v0

    .line 296
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/GmaArchive;->openArchive(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$DecodedArchive;

    move-result-object v1

    .line 297
    :try_start_11
    new-instance v0, Lcom/gmodvr/flat/GmaArchive$IndexInput;

    iget-object v2, v1, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->input:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lcom/gmodvr/flat/GmaArchive$IndexInput;-><init>(Ljava/io/InputStream;)V

    .line 298
    invoke-static {v0}, Lcom/gmodvr/flat/GmaArchive;->readHeader(Lcom/gmodvr/flat/GmaArchive$IndexInput;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object v2

    const-wide/32 v3, 0x4000000

    .line 299
    iput-wide v3, v0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->limit:J

    .line 300
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 302
    :goto_29
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-eqz v10, :cond_97

    .line 303
    iget-object v10, v2, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const v11, 0x30d40

    if-ge v10, v11, :cond_8f

    const/16 v10, 0x1000

    .line 304
    invoke-static {v3, v10}, Lcom/gmodvr/flat/GmaArchive;->indexString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gmodvr/flat/SteamFiles;->relative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 305
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v19

    .line 306
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v17

    cmp-long v10, v19, v4

    if-ltz v10, :cond_87

    const-wide v10, 0x1900000000L

    sub-long/2addr v10, v6

    cmp-long v10, v19, v10

    if-gtz v10, :cond_87

    .line 308
    new-instance v10, Lcom/gmodvr/flat/GmaArchive$Entry;

    long-to-int v12, v8

    move-object v11, v10

    move-object v13, v14

    move-wide/from16 v15, v19

    invoke-direct/range {v11 .. v18}, Lcom/gmodvr/flat/GmaArchive$Entry;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 309
    iput-wide v6, v10, Lcom/gmodvr/flat/GmaArchive$Entry;->offset:J

    add-long v6, v6, v19

    .line 311
    iget-object v8, v2, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :catchall_84
    move-exception v0

    move-object v2, v0

    goto :goto_c6

    .line 307
    :cond_87
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid GMA file size"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_8f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "GMA file table is too large"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_97
    iget-wide v8, v0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->position:J

    iput-wide v8, v2, Lcom/gmodvr/flat/GmaArchive$Info;->dataStart:J

    .line 314
    iput-wide v6, v2, Lcom/gmodvr/flat/GmaArchive$Info;->dataLength:J

    .line 315
    iget-wide v10, v1, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->size:J

    cmp-long v0, v10, v4

    if-ltz v0, :cond_c2

    sub-long/2addr v10, v8

    sub-long/2addr v10, v6

    cmp-long v0, v10, v4

    if-ltz v0, :cond_ba

    if-eqz v0, :cond_c2

    const-wide/16 v3, 0x4

    cmp-long v0, v10, v3

    if-nez v0, :cond_b2

    goto :goto_c2

    .line 318
    :cond_b2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid GMA data boundary"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_ba
    new-instance v0, Ljava/io/IOException;

    const-string v2, "GMA data is truncated"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c2
    .catchall {:try_start_11 .. :try_end_c2} :catchall_84

    .line 321
    :cond_c2
    :goto_c2
    invoke-virtual {v1}, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->close()V

    return-object v2

    :goto_c6
    if-eqz v1, :cond_d1

    .line 296
    :try_start_c8
    invoke-virtual {v1}, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d1

    :catchall_cc
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d1
    :goto_d1
    throw v2
.end method

.method public static readInfo(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    :try_start_7
    new-instance p0, Lcom/gmodvr/flat/GmaArchive$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gmodvr/flat/GmaArchive$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gmodvr/flat/GmaArchive;->parse(Ljava/io/RandomAccessFile;Lcom/gmodvr/flat/GmaArchive$PathPolicy;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 241
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_14
    move-exception p0

    .line 239
    :try_start_15
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw p0
.end method

.method public static readInfoAny(Ljava/io/File;Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 354
    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->format(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Format;

    move-result-object v0

    .line 355
    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->RAW:Lcom/gmodvr/flat/GmaArchive$Format;

    if-ne v0, v1, :cond_d

    invoke-static {p0}, Lcom/gmodvr/flat/GmaArchive;->readInfo(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0

    return-object p0

    .line 356
    :cond_d
    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->UNKNOWN:Lcom/gmodvr/flat/GmaArchive$Format;

    if-eq v0, v1, :cond_41

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".gma-info-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 359
    :try_start_2a
    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->SOURCE_LZMA:Lcom/gmodvr/flat/GmaArchive$Format;

    if-ne v0, v1, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    invoke-static {p0, v0, p1}, Lcom/gmodvr/flat/GmaArchive;->decompress(Ljava/io/File;ZLjava/io/File;)J

    .line 360
    invoke-static {p1}, Lcom/gmodvr/flat/GmaArchive;->readInfo(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_3c

    .line 361
    invoke-static {p1}, Lcom/gmodvr/flat/GmaArchive$Files;->deleteQuietly(Ljava/io/File;)V

    return-object p0

    :catchall_3c
    move-exception p0

    invoke-static {p1}, Lcom/gmodvr/flat/GmaArchive$Files;->deleteQuietly(Ljava/io/File;)V

    throw p0

    .line 356
    :cond_41
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not a GMA addon"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static slice(Ljava/io/RandomAccessFile;J)Ljava/io/InputStream;
    .registers 4

    .line 559
    new-instance v0, Lcom/gmodvr/flat/GmaArchive$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/gmodvr/flat/GmaArchive$2;-><init>(JLjava/io/RandomAccessFile;)V

    return-object v0
.end method

.method public static string(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 549
    :goto_5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_28

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-ge v1, p3, :cond_28

    .line 550
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v1

    if-nez v1, :cond_24

    .line 551
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 552
    :cond_24
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 554
    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid Workshop archive string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u32(Ljava/io/RandomAccessFile;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static verifyArchiveCrc(Ljava/io/RandomAccessFile;Lcom/gmodvr/flat/GmaArchive$Info;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-static {p0, p1, v0}, Lcom/gmodvr/flat/GmaArchive;->verifyArchiveCrc(Ljava/io/RandomAccessFile;Lcom/gmodvr/flat/GmaArchive$Info;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public static verifyArchiveCrc(Ljava/io/RandomAccessFile;Lcom/gmodvr/flat/GmaArchive$Info;Ljava/util/function/LongConsumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const-wide/16 v1, 0x0

    .line 221
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 222
    iget-wide v3, p1, Lcom/gmodvr/flat/GmaArchive$Info;->dataStart:J

    iget-wide v5, p1, Lcom/gmodvr/flat/GmaArchive$Info;->dataLength:J

    add-long/2addr v3, v5

    invoke-static {p0, v3, v4}, Lcom/gmodvr/flat/GmaArchive;->slice(Ljava/io/RandomAccessFile;J)Ljava/io/InputStream;

    move-result-object p0

    const/high16 v3, 0x10000

    .line 223
    new-array v3, v3, [B

    .line 225
    :cond_17
    :goto_17
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_39

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_33

    const/4 v5, 0x0

    .line 227
    invoke-virtual {v0, v3, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    if-eqz p2, :cond_17

    int-to-long v4, v4

    .line 228
    invoke-interface {p2, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    goto :goto_17

    .line 226
    :cond_33
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 230
    :cond_39
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/gmodvr/flat/GmaArchive$Info;->computedCrc:J

    .line 231
    iget-wide v3, p1, Lcom/gmodvr/flat/GmaArchive$Info;->storedCrc:J

    cmp-long p0, v3, v1

    if-gtz p0, :cond_46

    return-void

    .line 232
    :cond_46
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/gmodvr/flat/GmaArchive$Info;->storedCrc:J

    cmp-long p0, v3, v5

    if-nez p0, :cond_54

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/gmodvr/flat/GmaArchive$Info;->crcVerified:Z

    return-void

    .line 233
    :cond_54
    iget-object p0, p1, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5a
    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/GmaArchive$Entry;

    .line 234
    iget-wide v3, p1, Lcom/gmodvr/flat/GmaArchive$Entry;->size:J

    cmp-long p2, v3, v1

    if-lez p2, :cond_5a

    iget-wide p1, p1, Lcom/gmodvr/flat/GmaArchive$Entry;->crc:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_73

    goto :goto_5a

    :cond_73
    new-instance p0, Ljava/io/IOException;

    const-string p1, "GMA archive integrity check failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    return-void
.end method

###### Class com.gmodvr.flat.GmaArchive.AnonymousClass1 (com.gmodvr.flat.GmaArchive$1)
.class Lcom/gmodvr/flat/GmaArchive$1;
.super Ljava/lang/Object;
.source "GmaArchive.java"

# interfaces
.implements Lcom/gmodvr/flat/GmaArchive$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/GmaArchive;->directoryWriter(Ljava/io/File;)Lcom/gmodvr/flat/GmaArchive$Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$output:Ljava/io/File;

.field private final written:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/gmodvr/flat/GmaArchive$1;->val$output:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/GmaArchive$1;->written:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public skip(Ljava/io/InputStream;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 p0, 0x10000

    .line 429
    new-array p0, p0, [B

    .line 430
    :goto_4
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1c

    .line 431
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_4

    :cond_16
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :cond_1c
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/gmodvr/flat/GmaArchive$1;->written:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const v1, 0x30d40

    if-ge v0, v1, :cond_78

    iget-object v0, p0, Lcom/gmodvr/flat/GmaArchive$1;->written:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 419
    iget-object p0, p0, Lcom/gmodvr/flat/GmaArchive$1;->val$output:Ljava/io/File;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 420
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_45

    .line 421
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x20000000

    add-long/2addr v2, p3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3d

    goto :goto_45

    .line 422
    :cond_3d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not enough free space to unpack the addon"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 423
    :cond_45
    :goto_45
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 424
    invoke-static {p2, p0, v0, p3, p4}, Lcom/gmodvr/flat/GmaArchive;->-$$Nest$smcopy(Ljava/io/InputStream;Ljava/io/File;Ljava/util/zip/CRC32;J)J

    move-result-wide v1

    cmp-long p0, v1, p3

    if-nez p0, :cond_61

    if-eqz p5, :cond_60

    .line 425
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p2

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    cmp-long p0, p2, p4

    if-nez p0, :cond_61

    :cond_60
    return-void

    .line 426
    :cond_61
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GMA entry integrity check failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :cond_78
    new-instance p0, Ljava/io/IOException;

    const-string p1, "GMA addon has too many or conflicting files"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.gmodvr.flat.GmaArchive.AnonymousClass2 (com.gmodvr.flat.GmaArchive$2)
.class Lcom/gmodvr/flat/GmaArchive$2;
.super Ljava/io/InputStream;
.source "GmaArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/GmaArchive;->slice(Ljava/io/RandomAccessFile;J)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field remaining:J

.field final synthetic val$data:Ljava/io/RandomAccessFile;

.field final synthetic val$length:J


# direct methods
.method public constructor <init>(JLjava/io/RandomAccessFile;)V
    .registers 4

    .line 559
    iput-wide p1, p0, Lcom/gmodvr/flat/GmaArchive$2;->val$length:J

    iput-object p3, p0, Lcom/gmodvr/flat/GmaArchive$2;->val$data:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 560
    iput-wide p1, p0, Lcom/gmodvr/flat/GmaArchive$2;->remaining:J

    return-void
.end method


# virtual methods
.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$2;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 563
    :cond_a
    iget-object v0, p0, Lcom/gmodvr/flat/GmaArchive$2;->val$data:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_1a

    iget-wide v1, p0, Lcom/gmodvr/flat/GmaArchive$2;->remaining:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/gmodvr/flat/GmaArchive$2;->remaining:J

    return v0

    :cond_1a
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 567
    :cond_4
    iget-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$2;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    const/4 p0, -0x1

    return p0

    .line 568
    :cond_e
    iget-object v2, p0, Lcom/gmodvr/flat/GmaArchive$2;->val$data:Ljava/io/RandomAccessFile;

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-ltz p1, :cond_23

    .line 569
    iget-wide p2, p0, Lcom/gmodvr/flat/GmaArchive$2;->remaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/gmodvr/flat/GmaArchive$2;->remaining:J

    return p1

    :cond_23
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

###### Class com.gmodvr.flat.GmaArchive.DecodedArchive (com.gmodvr.flat.GmaArchive$DecodedArchive)
.class final Lcom/gmodvr/flat/GmaArchive$DecodedArchive;
.super Ljava/lang/Object;
.source "GmaArchive.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmaArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecodedArchive"
.end annotation


# instance fields
.field final input:Ljava/io/InputStream;

.field final size:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->input:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->size:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    iget-object p0, p0, Lcom/gmodvr/flat/GmaArchive$DecodedArchive;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

###### Class com.gmodvr.flat.GmaArchive.Entry (com.gmodvr.flat.GmaArchive$Entry)
.class final Lcom/gmodvr/flat/GmaArchive$Entry;
.super Ljava/lang/Object;
.source "GmaArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmaArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field final archivePath:Ljava/lang/String;

.field final crc:J

.field final index:I

.field offset:J

.field final path:Ljava/lang/String;

.field final size:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/gmodvr/flat/GmaArchive$Entry;->index:I

    iput-object p2, p0, Lcom/gmodvr/flat/GmaArchive$Entry;->archivePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/GmaArchive$Entry;->path:Ljava/lang/String;

    iput-wide p4, p0, Lcom/gmodvr/flat/GmaArchive$Entry;->size:J

    iput-wide p6, p0, Lcom/gmodvr/flat/GmaArchive$Entry;->crc:J

    return-void
.end method

###### Class com.gmodvr.flat.GmaArchive.Files (com.gmodvr.flat.GmaArchive$Files)
.class final Lcom/gmodvr/flat/GmaArchive$Files;
.super Ljava/lang/Object;
.source "GmaArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmaArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Files"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteQuietly(Ljava/io/File;)V
    .registers 1

    .line 575
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

###### Class com.gmodvr.flat.GmaArchive.Format (com.gmodvr.flat.GmaArchive$Format)
.class final enum Lcom/gmodvr/flat/GmaArchive$Format;
.super Ljava/lang/Enum;
.source "GmaArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmaArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gmodvr/flat/GmaArchive$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gmodvr/flat/GmaArchive$Format;

.field public static final enum LZMA_ALONE:Lcom/gmodvr/flat/GmaArchive$Format;

.field public static final enum RAW:Lcom/gmodvr/flat/GmaArchive$Format;

.field public static final enum SOURCE_LZMA:Lcom/gmodvr/flat/GmaArchive$Format;

.field public static final enum UNKNOWN:Lcom/gmodvr/flat/GmaArchive$Format;


# direct methods
.method private static synthetic $values()[Lcom/gmodvr/flat/GmaArchive$Format;
    .registers 4

    .line 41
    sget-object v0, Lcom/gmodvr/flat/GmaArchive$Format;->RAW:Lcom/gmodvr/flat/GmaArchive$Format;

    sget-object v1, Lcom/gmodvr/flat/GmaArchive$Format;->LZMA_ALONE:Lcom/gmodvr/flat/GmaArchive$Format;

    sget-object v2, Lcom/gmodvr/flat/GmaArchive$Format;->SOURCE_LZMA:Lcom/gmodvr/flat/GmaArchive$Format;

    sget-object v3, Lcom/gmodvr/flat/GmaArchive$Format;->UNKNOWN:Lcom/gmodvr/flat/GmaArchive$Format;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gmodvr/flat/GmaArchive$Format;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Lcom/gmodvr/flat/GmaArchive$Format;

    const-string v1, "RAW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/GmaArchive$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/GmaArchive$Format;->RAW:Lcom/gmodvr/flat/GmaArchive$Format;

    new-instance v0, Lcom/gmodvr/flat/GmaArchive$Format;

    const-string v1, "LZMA_ALONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/GmaArchive$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/GmaArchive$Format;->LZMA_ALONE:Lcom/gmodvr/flat/GmaArchive$Format;

    new-instance v0, Lcom/gmodvr/flat/GmaArchive$Format;

    const-string v1, "SOURCE_LZMA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/GmaArchive$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/GmaArchive$Format;->SOURCE_LZMA:Lcom/gmodvr/flat/GmaArchive$Format;

    new-instance v0, Lcom/gmodvr/flat/GmaArchive$Format;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/GmaArchive$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gmodvr/flat/GmaArchive$Format;->UNKNOWN:Lcom/gmodvr/flat/GmaArchive$Format;

    invoke-static {}, Lcom/gmodvr/flat/GmaArchive$Format;->$values()[Lcom/gmodvr/flat/GmaArchive$Format;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/GmaArchive$Format;->$VALUES:[Lcom/gmodvr/flat/GmaArchive$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gmodvr/flat/GmaArchive$Format;
    .registers 2

    .line 41
    const-class v0, Lcom/gmodvr/flat/GmaArchive$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/GmaArchive$Format;

    return-object p0
.end method

.method public static values()[Lcom/gmodvr/flat/GmaArchive$Format;
    .registers 1

    .line 41
    sget-object v0, Lcom/gmodvr/flat/GmaArchive$Format;->$VALUES:[Lcom/gmodvr/flat/GmaArchive$Format;

    invoke-virtual {v0}, [Lcom/gmodvr/flat/GmaArchive$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gmodvr/flat/GmaArchive$Format;

    return-object v0
.end method

###### Class com.gmodvr.flat.GmaArchive.IndexInput (com.gmodvr.flat.GmaArchive$IndexInput)
.class final Lcom/gmodvr/flat/GmaArchive$IndexInput;
.super Ljava/io/FilterInputStream;
.source "GmaArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmaArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexInput"
.end annotation


# instance fields
.field limit:J

.field position:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 336
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/32 v0, 0x40000

    .line 335
    iput-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->limit:J

    return-void
.end method


# virtual methods
.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->position:J

    iget-wide v2, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 339
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 340
    iget-wide v1, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->position:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->position:J

    :cond_18
    return v0

    .line 338
    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "GMA header or file table is too large"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 345
    :cond_4
    iget-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->position:J

    iget-wide v2, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_26

    .line 346
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    int-to-long v1, p3

    iget-wide v3, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->limit:J

    iget-wide v5, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->position:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_25

    .line 347
    iget-wide p2, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->position:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/gmodvr/flat/GmaArchive$IndexInput;->position:J

    :cond_25
    return p1

    .line 345
    :cond_26
    new-instance p0, Ljava/io/IOException;

    const-string p1, "GMA header or file table is too large"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.gmodvr.flat.GmaArchive.Info (com.gmodvr.flat.GmaArchive$Info)
.class final Lcom/gmodvr/flat/GmaArchive$Info;
.super Ljava/lang/Object;
.source "GmaArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmaArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field addonVersion:I

.field author:Ljava/lang/String;

.field computedCrc:J

.field crcVerified:Z

.field dataLength:J

.field dataStart:J

.field description:Ljava/lang/String;

.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmaArchive$Entry;",
            ">;"
        }
    .end annotation
.end field

.field rawDescription:Ljava/lang/String;

.field final required:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field steamId:J

.field storedCrc:J

.field final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field timestamp:J

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;

.field version:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->required:Ljava/util/List;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->rawDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->author:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->description:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->type:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->tags:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 78
    iput-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->storedCrc:J

    .line 82
    iput-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->computedCrc:J

    return-void
.end method


# virtual methods
.method public crc()J
    .registers 6

    .line 85
    iget-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->storedCrc:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    goto :goto_f

    :cond_9
    iget-wide v0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->computedCrc:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_f
    return-wide v0
.end method

.method public keptBytes()J
    .registers 5

    .line 90
    iget-object p0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GmaArchive$Entry;

    iget-object v3, v2, Lcom/gmodvr/flat/GmaArchive$Entry;->path:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-wide v2, v2, Lcom/gmodvr/flat/GmaArchive$Entry;->size:J

    add-long/2addr v0, v2

    goto :goto_8

    :cond_1c
    return-wide v0
.end method

.method public keptFiles()I
    .registers 3

    .line 95
    iget-object p0, p0, Lcom/gmodvr/flat/GmaArchive$Info;->entries:Ljava/util/List;

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

    check-cast v1, Lcom/gmodvr/flat/GmaArchive$Entry;

    iget-object v1, v1, Lcom/gmodvr/flat/GmaArchive$Entry;->path:Ljava/lang/String;

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    return v0
.end method

###### Class com.gmodvr.flat.GmaArchive.PathPolicy (com.gmodvr.flat.GmaArchive$PathPolicy)
.class interface abstract Lcom/gmodvr/flat/GmaArchive$PathPolicy;
.super Ljava/lang/Object;
.source "GmaArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmaArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PathPolicy"
.end annotation


# virtual methods
.method public abstract map(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.GmaArchive.Writer (com.gmodvr.flat.GmaArchive$Writer)
.class interface abstract Lcom/gmodvr/flat/GmaArchive$Writer;
.super Ljava/lang/Object;
.source "GmaArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/GmaArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Writer"
.end annotation


# virtual methods
.method public abstract skip(Ljava/io/InputStream;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.GmaArchive$$ExternalSyntheticLambda0 (com.gmodvr.flat.GmaArchive$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/GmaArchive$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/GmaArchive$PathPolicy;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/gmodvr/flat/SteamFiles;->relative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.GmaArchive$$ExternalSyntheticLambda1 (com.gmodvr.flat.GmaArchive$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/GmaArchive$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/GmaArchive$PathPolicy;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/gmodvr/flat/GmaArchive;->gmodPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
