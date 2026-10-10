###### Class com.gmodvr.flat.SteamTransfer (com.gmodvr.flat.SteamTransfer)
.class final Lcom/gmodvr/flat/SteamTransfer;
.super Ljava/lang/Object;
.source "SteamTransfer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/SteamTransfer$Progress;,
        Lcom/gmodvr/flat/SteamTransfer$Request;,
        Lcom/gmodvr/flat/SteamTransfer$Source;,
        Lcom/gmodvr/flat/SteamTransfer$Downloaded;
    }
.end annotation


# static fields
.field private static final PARALLEL_CHUNKS:I = 0x4

.field private static final PARALLEL_FILES:I = 0x4


# instance fields
.field private final chunkSlots:Ljava/util/concurrent/Semaphore;

.field private final chunks:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$GdCHf1SyJxHtUvTX_FtaRyn_T1c(Ljava/lang/Object;Lcom/gmodvr/flat/SteamTransfer$Progress;JLjava/lang/String;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/SteamTransfer;->lambda$download$0(Ljava/lang/Object;Lcom/gmodvr/flat/SteamTransfer$Progress;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JFUbKosMdLYYr6nh0xWz_a9TKIU([JLcom/gmodvr/flat/SteamTransfer$Progress;[JJLjava/lang/String;)V
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/gmodvr/flat/SteamTransfer;->lambda$download$2([JLcom/gmodvr/flat/SteamTransfer$Progress;[JJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQiNxissyb7fhNUj-iVob8l6iXE(Lcom/gmodvr/flat/SteamTransfer;Ljava/io/File;Lcom/gmodvr/flat/SteamTransfer$Request;Lcom/gmodvr/flat/SteamTransfer$Progress;)Ljava/lang/Void;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/SteamTransfer;->lambda$download$1(Ljava/io/File;Lcom/gmodvr/flat/SteamTransfer$Request;Lcom/gmodvr/flat/SteamTransfer$Progress;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VBXx66IsqVLISJ0CjyxkcughoJw(Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamTransfer$Source;)Lcom/gmodvr/flat/SteamTransfer$Downloaded;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamTransfer;->lambda$writePartial$3(Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamTransfer$Source;)Lcom/gmodvr/flat/SteamTransfer$Downloaded;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 17
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/SteamTransfer;->chunks:Ljava/util/concurrent/ExecutorService;

    .line 19
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/gmodvr/flat/SteamTransfer;->chunkSlots:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method private static synthetic lambda$download$0(Ljava/lang/Object;Lcom/gmodvr/flat/SteamTransfer$Progress;JLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    monitor-enter p0

    .line 38
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 39
    invoke-interface {p1, p2, p3, p4}, Lcom/gmodvr/flat/SteamTransfer$Progress;->advance(JLjava/lang/String;)V

    .line 40
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    goto :goto_18

    .line 38
    :cond_12
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 40
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_10

    throw p1
.end method

.method private synthetic lambda$download$1(Ljava/io/File;Lcom/gmodvr/flat/SteamTransfer$Request;Lcom/gmodvr/flat/SteamTransfer$Progress;)Ljava/lang/Void;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object v2, p2, Lcom/gmodvr/flat/SteamTransfer$Request;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/gmodvr/flat/SteamTransfer$Request;->data:Lin/dragonbra/javasteam/types/FileData;

    iget-object v4, p2, Lcom/gmodvr/flat/SteamTransfer$Request;->source:Lcom/gmodvr/flat/SteamTransfer$Source;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/gmodvr/flat/SteamTransfer;->download(Ljava/io/File;Ljava/lang/String;Lin/dragonbra/javasteam/types/FileData;Lcom/gmodvr/flat/SteamTransfer$Source;Lcom/gmodvr/flat/SteamTransfer$Progress;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$download$2([JLcom/gmodvr/flat/SteamTransfer$Progress;[JJLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    aget-wide v1, p0, v0

    add-long/2addr v1, p3

    aput-wide v1, p0, v0

    .line 105
    aget-wide p3, p2, v0

    sub-long/2addr v1, p3

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    invoke-interface {p1, p3, p4, p5}, Lcom/gmodvr/flat/SteamTransfer$Progress;->advance(JLjava/lang/String;)V

    .line 106
    aget-wide p3, p2, v0

    aget-wide p0, p0, v0

    invoke-static {p3, p4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    aput-wide p0, p2, v0

    return-void
.end method

.method private static synthetic lambda$writePartial$3(Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamTransfer$Source;)Lcom/gmodvr/flat/SteamTransfer$Downloaded;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/gmodvr/flat/SteamTransfer$Downloaded;

    invoke-interface {p1, p0}, Lcom/gmodvr/flat/SteamTransfer$Source;->fetch(Lin/dragonbra/javasteam/types/ChunkData;)[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/SteamTransfer$Downloaded;-><init>(Lin/dragonbra/javasteam/types/ChunkData;[B)V

    return-object v0
.end method

.method public static matchesChunk(Lin/dragonbra/javasteam/types/ChunkData;[B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_29

    .line 190
    array-length v0, p1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 191
    invoke-static {p1}, Lin/dragonbra/javasteam/util/Adler32;->calculate([B)I

    move-result v0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/ChunkData;->getChecksum()I

    move-result v1

    if-ne v0, v1, :cond_29

    const-string v0, "SHA-1"

    .line 192
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/ChunkData;->getChunkID()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method private static result(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-nez v0, :cond_1e

    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 77
    :cond_1d
    throw p0

    .line 75
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    throw p0
.end method

.method public static validate(Lin/dragonbra/javasteam/types/FileData;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8a

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/FileData;->getFileHash()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8a

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/FileData;->getChunks()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    new-instance v4, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v4}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/dragonbra/javasteam/types/ChunkData;

    .line 201
    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/ChunkData;->getOffset()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_71

    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v5

    if-lez v5, :cond_71

    .line 202
    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v5

    const/high16 v6, 0x1000000

    if-gt v5, v6, :cond_71

    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v5

    if-lez v5, :cond_71

    .line 203
    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/ChunkData;->getCompressedLength()I

    move-result v5

    if-gt v5, v6, :cond_71

    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/ChunkData;->getChunkID()[B

    move-result-object v5

    if-eqz v5, :cond_71

    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/ChunkData;->getChunkID()[B

    move-result-object v5

    array-length v5, v5

    if-ne v5, v1, :cond_71

    .line 205
    invoke-virtual {v4}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    goto :goto_2c

    .line 204
    :cond_71
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid Steam chunk layout"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_79
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v0

    cmp-long p0, v2, v0

    if-nez p0, :cond_82

    return-void

    :cond_82
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Steam chunks do not cover the file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_8a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid Steam file metadata"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writePartial(Ljava/io/File;Ljava/lang/String;Lin/dragonbra/javasteam/types/FileData;Lcom/gmodvr/flat/SteamTransfer$Source;Lcom/gmodvr/flat/SteamTransfer$Progress;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p5

    .line 123
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_13

    :cond_11
    const-wide/16 v6, 0x0

    .line 124
    :goto_13
    new-instance v3, Ljava/util/concurrent/ExecutorCompletionService;

    iget-object v8, v1, Lcom/gmodvr/flat/SteamTransfer;->chunks:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v8}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 125
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x1

    .line 126
    :try_start_20
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    move-object/from16 v12, p1

    invoke-direct {v10, v12, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_77

    .line 127
    :try_start_29
    invoke-virtual/range {p3 .. p3}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 128
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Lin/dragonbra/javasteam/types/FileData;->getChunks()Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    new-instance v12, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda2;

    invoke-direct {v12}, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v12}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v12, 0x0

    .line 131
    :goto_46
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lt v12, v13, :cond_7e

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_53

    goto :goto_7e

    .line 179
    :cond_53
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5a
    .catchall {:try_start_29 .. :try_end_5a} :catchall_7a

    .line 180
    :try_start_5a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_77

    .line 181
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 182
    invoke-interface {v2, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 183
    iget-object v2, v1, Lcom/gmodvr/flat/SteamTransfer;->chunkSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_61

    :cond_76
    return-void

    :catchall_77
    move-exception v0

    goto/16 :goto_1a3

    :catchall_7a
    move-exception v0

    move-object v2, v0

    goto/16 :goto_199

    .line 132
    :cond_7e
    :goto_7e
    :try_start_7e
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_100

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v13

    const/4 v14, 0x4

    if-ge v13, v14, :cond_100

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v13

    if-nez v13, :cond_fa

    .line 134
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lin/dragonbra/javasteam/types/ChunkData;

    .line 135
    invoke-virtual {v13}, Lin/dragonbra/javasteam/types/ChunkData;->getOffset()J

    move-result-wide v14

    invoke-virtual {v13}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v9

    int-to-long v4, v9

    add-long/2addr v14, v4

    cmp-long v4, v14, v6

    if-gtz v4, :cond_c7

    .line 136
    invoke-virtual {v13}, Lin/dragonbra/javasteam/types/ChunkData;->getUncompressedLength()I

    move-result v4

    new-array v5, v4, [B

    .line 137
    invoke-virtual {v13}, Lin/dragonbra/javasteam/types/ChunkData;->getOffset()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 138
    invoke-virtual {v10, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 139
    invoke-static {v13, v5}, Lcom/gmodvr/flat/SteamTransfer;->matchesChunk(Lin/dragonbra/javasteam/types/ChunkData;[B)Z

    move-result v5

    if-eqz v5, :cond_c7

    int-to-long v4, v4

    .line 140
    invoke-interface {v2, v4, v5, v0}, Lcom/gmodvr/flat/SteamTransfer$Progress;->advance(JLjava/lang/String;)V

    :goto_c3
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    goto :goto_7e

    .line 147
    :cond_c7
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d5

    iget-object v4, v1, Lcom/gmodvr/flat/SteamTransfer;->chunkSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-wide/16 v14, 0x0

    goto :goto_e4

    .line 148
    :cond_d5
    iget-object v4, v1, Lcom/gmodvr/flat/SteamTransfer;->chunkSlots:Ljava/util/concurrent/Semaphore;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x0

    invoke-virtual {v4, v14, v15, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4
    :try_end_df
    .catchall {:try_start_7e .. :try_end_df} :catchall_7a

    if-nez v4, :cond_e4

    move-object/from16 v5, p4

    goto :goto_104

    .line 150
    :cond_e4
    :goto_e4
    :try_start_e4
    new-instance v4, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda3;

    move-object/from16 v5, p4

    invoke-direct {v4, v13, v5}, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda3;-><init>(Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamTransfer$Source;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f2
    .catch Ljava/lang/RuntimeException; {:try_start_e4 .. :try_end_f2} :catch_f3
    .catch Ljava/lang/Error; {:try_start_e4 .. :try_end_f2} :catch_f3
    .catchall {:try_start_e4 .. :try_end_f2} :catchall_7a

    goto :goto_c3

    :catch_f3
    move-exception v0

    .line 152
    :try_start_f4
    iget-object v2, v1, Lcom/gmodvr/flat/SteamTransfer;->chunkSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 153
    throw v0

    .line 133
    :cond_fa
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_100
    move-object/from16 v5, p4

    const-wide/16 v14, 0x0

    .line 157
    :goto_104
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10b

    goto :goto_14c

    .line 160
    :cond_10b
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0xf

    invoke-interface {v3, v14, v15, v4}, Ljava/util/concurrent/CompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v4

    if-eqz v4, :cond_182

    .line 162
    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_118
    .catchall {:try_start_f4 .. :try_end_118} :catchall_7a

    .line 165
    :try_start_118
    invoke-static {v4}, Lcom/gmodvr/flat/SteamTransfer;->result(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/SteamTransfer$Downloaded;

    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_176

    .line 167
    iget-object v9, v4, Lcom/gmodvr/flat/SteamTransfer$Downloaded;->chunk:Lin/dragonbra/javasteam/types/ChunkData;

    iget-object v13, v4, Lcom/gmodvr/flat/SteamTransfer$Downloaded;->bytes:[B

    invoke-static {v9, v13}, Lcom/gmodvr/flat/SteamTransfer;->matchesChunk(Lin/dragonbra/javasteam/types/ChunkData;[B)Z

    move-result v9

    if-eqz v9, :cond_151

    .line 170
    iget-object v9, v4, Lcom/gmodvr/flat/SteamTransfer$Downloaded;->chunk:Lin/dragonbra/javasteam/types/ChunkData;

    invoke-virtual {v9}, Lin/dragonbra/javasteam/types/ChunkData;->getOffset()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    iget-object v9, v4, Lcom/gmodvr/flat/SteamTransfer$Downloaded;->bytes:[B

    invoke-virtual {v10, v9}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_140
    .catchall {:try_start_118 .. :try_end_140} :catchall_14f

    .line 173
    :try_start_140
    iget-object v9, v1, Lcom/gmodvr/flat/SteamTransfer;->chunkSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->release()V

    .line 175
    iget-object v4, v4, Lcom/gmodvr/flat/SteamTransfer$Downloaded;->bytes:[B

    array-length v4, v4

    int-to-long v13, v4

    invoke-interface {v2, v13, v14, v0}, Lcom/gmodvr/flat/SteamTransfer$Progress;->advance(JLjava/lang/String;)V
    :try_end_14c
    .catchall {:try_start_140 .. :try_end_14c} :catchall_7a

    :goto_14c
    const/4 v9, 0x1

    goto/16 :goto_46

    :catchall_14f
    move-exception v0

    goto :goto_17c

    .line 168
    :cond_151
    :try_start_151
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Steam chunk failed integrity verification: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at byte "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/gmodvr/flat/SteamTransfer$Downloaded;->chunk:Lin/dragonbra/javasteam/types/ChunkData;

    .line 169
    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/ChunkData;->getOffset()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_176
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_17c
    .catchall {:try_start_151 .. :try_end_17c} :catchall_14f

    .line 173
    :goto_17c
    :try_start_17c
    iget-object v2, v1, Lcom/gmodvr/flat/SteamTransfer;->chunkSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 174
    throw v0

    .line 161
    :cond_182
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Steam chunk download timed out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_199
    .catchall {:try_start_17c .. :try_end_199} :catchall_7a

    .line 126
    :goto_199
    :try_start_199
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19c
    .catchall {:try_start_199 .. :try_end_19c} :catchall_19d

    goto :goto_1a2

    :catchall_19d
    move-exception v0

    move-object v3, v0

    :try_start_19f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a2
    throw v2
    :try_end_1a3
    .catchall {:try_start_19f .. :try_end_1a3} :catchall_77

    .line 181
    :goto_1a3
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    .line 182
    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 183
    iget-object v3, v1, Lcom/gmodvr/flat/SteamTransfer;->chunkSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1a7

    .line 185
    :cond_1bd
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/gmodvr/flat/SteamTransfer;->chunks:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public download(Ljava/io/File;Ljava/lang/Iterable;Lcom/gmodvr/flat/SteamTransfer$Progress;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Iterable<",
            "Lcom/gmodvr/flat/SteamTransfer$Request;",
            ">;",
            "Lcom/gmodvr/flat/SteamTransfer$Progress;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    .line 32
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 34
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 35
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v5, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, p3}, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/gmodvr/flat/SteamTransfer$Progress;)V

    const-wide/16 v6, 0x1

    const/4 p3, 0x0

    const/4 v4, 0x1

    .line 43
    :try_start_1d
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 44
    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6f

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v8
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_6d

    if-nez v8, :cond_2e

    goto :goto_6f

    .line 58
    :cond_2e
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    invoke-interface {p1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_32

    .line 59
    :cond_42
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 62
    :goto_45
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_53

    .line 63
    :try_start_4b
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v6, v7, p0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_45

    :catch_51
    move p3, v4

    goto :goto_45

    :cond_53
    if-eqz p3, :cond_5c

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 69
    :cond_5c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_67

    return-void

    :cond_67
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :catchall_6d
    move-exception p0

    goto :goto_aa

    .line 45
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    if-ge v8, v0, :cond_9e

    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_98

    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gmodvr/flat/SteamTransfer$Request;

    .line 48
    new-instance v9, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, p1, v8, v5}, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/SteamTransfer;Ljava/io/File;Lcom/gmodvr/flat/SteamTransfer$Request;Lcom/gmodvr/flat/SteamTransfer$Progress;)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 46
    :cond_98
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 53
    :cond_9e
    invoke-interface {v2}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v8

    .line 54
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    invoke-static {v8}, Lcom/gmodvr/flat/SteamTransfer;->result(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_a8
    .catchall {:try_start_6f .. :try_end_a8} :catchall_6d

    goto/16 :goto_21

    .line 58
    :goto_aa
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ae
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_be

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Future;

    invoke-interface {p2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_ae

    .line 59
    :cond_be
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 62
    :goto_c1
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p1

    if-nez p1, :cond_cf

    .line 63
    :try_start_c7
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v6, v7, p1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_cc
    .catch Ljava/lang/InterruptedException; {:try_start_c7 .. :try_end_cc} :catch_cd

    goto :goto_c1

    :catch_cd
    move p3, v4

    goto :goto_c1

    :cond_cf
    if-eqz p3, :cond_d8

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 67
    :cond_d8
    throw p0
.end method

.method public download(Ljava/io/File;Ljava/lang/String;Lin/dragonbra/javasteam/types/FileData;Lcom/gmodvr/flat/SteamTransfer$Source;Lcom/gmodvr/flat/SteamTransfer$Progress;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 88
    invoke-static/range {p3 .. p3}, Lcom/gmodvr/flat/SteamTransfer;->validate(Lin/dragonbra/javasteam/types/FileData;)V

    .line 89
    invoke-static/range {p1 .. p2}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 90
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Lin/dragonbra/javasteam/types/FileData;->getFileHash()[B

    move-result-object v2

    invoke-static {v10, v0, v1, v2}, Lcom/gmodvr/flat/SteamFiles;->matches(Ljava/io/File;J[B)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 92
    invoke-virtual/range {p3 .. p3}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v0

    invoke-interface {v7, v0, v1, v6}, Lcom/gmodvr/flat/SteamTransfer$Progress;->advance(JLjava/lang/String;)V

    return-void

    .line 96
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".steam-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lin/dragonbra/javasteam/types/FileData;->getFileHash()[B

    move-result-object v1

    invoke-static {v1}, Lcom/gmodvr/flat/SteamFiles;->hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".part"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 97
    new-array v14, v9, [J

    aput-wide v12, v14, v8

    move v15, v8

    :goto_58
    const/4 v0, 0x2

    if-ge v15, v0, :cond_9b

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_95

    .line 100
    new-array v0, v9, [J

    aput-wide v12, v0, v8

    .line 101
    new-instance v5, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v7, v14}, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda4;-><init>([JLcom/gmodvr/flat/SteamTransfer$Progress;[J)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/SteamTransfer;->writePartial(Ljava/io/File;Ljava/lang/String;Lin/dragonbra/javasteam/types/FileData;Lcom/gmodvr/flat/SteamTransfer$Source;Lcom/gmodvr/flat/SteamTransfer$Progress;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Lin/dragonbra/javasteam/types/FileData;->getTotalSize()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Lin/dragonbra/javasteam/types/FileData;->getFileHash()[B

    move-result-object v2

    invoke-static {v11, v0, v1, v2}, Lcom/gmodvr/flat/SteamFiles;->matches(Ljava/io/File;J[B)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 109
    invoke-static {v11, v10}, Lcom/gmodvr/flat/SteamFiles;->move(Ljava/io/File;Ljava/io/File;)V

    return-void

    .line 114
    :cond_8c
    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    add-int/2addr v15, v9

    goto :goto_58

    .line 99
    :cond_95
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 116
    :cond_9b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Steam file failed SHA-1 verification after a fresh download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Resume to retry. If it keeps failing, report this filename."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.gmodvr.flat.SteamTransfer.Downloaded (com.gmodvr.flat.SteamTransfer$Downloaded)
.class final Lcom/gmodvr/flat/SteamTransfer$Downloaded;
.super Ljava/lang/Object;
.source "SteamTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Downloaded"
.end annotation


# instance fields
.field final bytes:[B

.field final chunk:Lin/dragonbra/javasteam/types/ChunkData;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/ChunkData;[B)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamTransfer$Downloaded;->chunk:Lin/dragonbra/javasteam/types/ChunkData;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamTransfer$Downloaded;->bytes:[B

    return-void
.end method

###### Class com.gmodvr.flat.SteamTransfer.Progress (com.gmodvr.flat.SteamTransfer$Progress)
.class interface abstract Lcom/gmodvr/flat/SteamTransfer$Progress;
.super Ljava/lang/Object;
.source "SteamTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Progress"
.end annotation


# virtual methods
.method public abstract advance(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.SteamTransfer.Request (com.gmodvr.flat.SteamTransfer$Request)
.class final Lcom/gmodvr/flat/SteamTransfer$Request;
.super Ljava/lang/Object;
.source "SteamTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field final data:Lin/dragonbra/javasteam/types/FileData;

.field final name:Ljava/lang/String;

.field final source:Lcom/gmodvr/flat/SteamTransfer$Source;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lin/dragonbra/javasteam/types/FileData;Lcom/gmodvr/flat/SteamTransfer$Source;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/gmodvr/flat/SteamTransfer$Request;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamTransfer$Request;->data:Lin/dragonbra/javasteam/types/FileData;

    iput-object p3, p0, Lcom/gmodvr/flat/SteamTransfer$Request;->source:Lcom/gmodvr/flat/SteamTransfer$Source;

    return-void
.end method

###### Class com.gmodvr.flat.SteamTransfer.Source (com.gmodvr.flat.SteamTransfer$Source)
.class interface abstract Lcom/gmodvr/flat/SteamTransfer$Source;
.super Ljava/lang/Object;
.source "SteamTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Source"
.end annotation


# virtual methods
.method public abstract fetch(Lin/dragonbra/javasteam/types/ChunkData;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda0 (com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamTransfer$Progress;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/gmodvr/flat/SteamTransfer$Progress;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/gmodvr/flat/SteamTransfer$Progress;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda0;->f$1:Lcom/gmodvr/flat/SteamTransfer$Progress;

    return-void
.end method


# virtual methods
.method public final advance(JLjava/lang/String;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda0;->f$1:Lcom/gmodvr/flat/SteamTransfer$Progress;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/gmodvr/flat/SteamTransfer;->$r8$lambda$GdCHf1SyJxHtUvTX_FtaRyn_T1c(Ljava/lang/Object;Lcom/gmodvr/flat/SteamTransfer$Progress;JLjava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda1 (com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamTransfer;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/gmodvr/flat/SteamTransfer$Request;

.field public final synthetic f$3:Lcom/gmodvr/flat/SteamTransfer$Progress;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamTransfer;Ljava/io/File;Lcom/gmodvr/flat/SteamTransfer$Request;Lcom/gmodvr/flat/SteamTransfer$Progress;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamTransfer;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;->f$2:Lcom/gmodvr/flat/SteamTransfer$Request;

    iput-object p4, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;->f$3:Lcom/gmodvr/flat/SteamTransfer$Progress;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamTransfer;

    iget-object v1, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;->f$2:Lcom/gmodvr/flat/SteamTransfer$Request;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda1;->f$3:Lcom/gmodvr/flat/SteamTransfer$Progress;

    invoke-static {v0, v1, v2, p0}, Lcom/gmodvr/flat/SteamTransfer;->$r8$lambda$UQiNxissyb7fhNUj-iVob8l6iXE(Lcom/gmodvr/flat/SteamTransfer;Ljava/io/File;Lcom/gmodvr/flat/SteamTransfer$Request;Lcom/gmodvr/flat/SteamTransfer$Progress;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda3 (com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/types/ChunkData;

.field public final synthetic f$1:Lcom/gmodvr/flat/SteamTransfer$Source;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamTransfer$Source;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda3;->f$0:Lin/dragonbra/javasteam/types/ChunkData;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/SteamTransfer$Source;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda3;->f$0:Lin/dragonbra/javasteam/types/ChunkData;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/SteamTransfer$Source;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/SteamTransfer;->$r8$lambda$VBXx66IsqVLISJ0CjyxkcughoJw(Lin/dragonbra/javasteam/types/ChunkData;Lcom/gmodvr/flat/SteamTransfer$Source;)Lcom/gmodvr/flat/SteamTransfer$Downloaded;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda4 (com.gmodvr.flat.SteamTransfer$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamTransfer$Progress;


# instance fields
.field public final synthetic f$0:[J

.field public final synthetic f$1:Lcom/gmodvr/flat/SteamTransfer$Progress;

.field public final synthetic f$2:[J


# direct methods
.method public synthetic constructor <init>([JLcom/gmodvr/flat/SteamTransfer$Progress;[J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda4;->f$0:[J

    iput-object p2, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/SteamTransfer$Progress;

    iput-object p3, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda4;->f$2:[J

    return-void
.end method


# virtual methods
.method public final advance(JLjava/lang/String;)V
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda4;->f$0:[J

    iget-object v1, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/SteamTransfer$Progress;

    iget-object v2, p0, Lcom/gmodvr/flat/SteamTransfer$$ExternalSyntheticLambda4;->f$2:[J

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/gmodvr/flat/SteamTransfer;->$r8$lambda$JFUbKosMdLYYr6nh0xWz_a9TKIU([JLcom/gmodvr/flat/SteamTransfer$Progress;[JJLjava/lang/String;)V

    return-void
.end method
