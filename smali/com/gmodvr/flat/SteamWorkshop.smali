###### Class com.gmodvr.flat.SteamWorkshop (com.gmodvr.flat.SteamWorkshop)
.class final Lcom/gmodvr/flat/SteamWorkshop;
.super Ljava/lang/Object;
.source "SteamWorkshop.java"


# static fields
.field private static final MAX_EXPANDED:J = 0x1900000000L

.field private static final RESERVE:J = 0x20000000L


# instance fields
.field private archiveDepth:I

.field private final checksums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopIntegrity$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private entries:I

.field private expanded:J

.field private gmaInfo:Lcom/gmodvr/flat/GmaArchive$Info;

.field private final profile:Lcom/gmodvr/flat/GameContentProfile;

.field private final progress:Ljava/util/function/LongConsumer;

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
.method public static synthetic $r8$lambda$NOIHElHGkcfe-mF_jij6mN28kk4(Lcom/gmodvr/flat/SteamWorkshop;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamWorkshop;->lambda$gma$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdrain(Lcom/gmodvr/flat/SteamWorkshop;Ljava/io/InputStream;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamWorkshop;->drain(Ljava/io/InputStream;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwrite(Lcom/gmodvr/flat/SteamWorkshop;Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/gmodvr/flat/SteamWorkshop;->write(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/SteamWorkshop;-><init>(Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

.method public constructor <init>(Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 3

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/gmodvr/flat/SteamWorkshop;-><init>(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public constructor <init>(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/function/LongConsumer;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/SteamWorkshop;->written:Ljava/util/Set;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/SteamWorkshop;->checksums:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/gmodvr/flat/SteamWorkshop;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamWorkshop;->progress:Ljava/util/function/LongConsumer;

    return-void
.end method

.method private account(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_29

    .line 190
    iget-wide v0, p0, Lcom/gmodvr/flat/SteamWorkshop;->expanded:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gmodvr/flat/SteamWorkshop;->expanded:J

    const-wide v4, 0x1900000000L

    cmp-long p1, v0, v4

    if-gtz p1, :cond_21

    .line 192
    iget-object p0, p0, Lcom/gmodvr/flat/SteamWorkshop;->progress:Ljava/util/function/LongConsumer;

    if-eqz p0, :cond_20

    invoke-interface {p0, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    :cond_20
    return-void

    .line 191
    :cond_21
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Workshop archive is too large"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_29
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method private compressedGma(Ljava/io/File;Ljava/io/File;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".steam-gma-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 118
    :try_start_20
    new-instance v1, Ljava/io/File;

    const-string v2, "content.gma"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/gmodvr/flat/SteamWorkshop;->progress:Ljava/util/function/LongConsumer;

    invoke-static {p1, p3, v1, v2}, Lcom/gmodvr/flat/GmaArchive;->decompress(Ljava/io/File;ZLjava/io/File;Ljava/util/function/LongConsumer;)J

    move-result-wide v2

    .line 120
    iget-wide v4, p0, Lcom/gmodvr/flat/SteamWorkshop;->expanded:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/gmodvr/flat/SteamWorkshop;->expanded:J

    const-wide v2, 0x1900000000L

    cmp-long p1, v4, v2

    if-gtz p1, :cond_44

    .line 122
    invoke-direct {p0, v1, p2}, Lcom/gmodvr/flat/SteamWorkshop;->gma(Ljava/io/File;Ljava/io/File;)V
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_42

    .line 123
    invoke-static {v0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    return-void

    :catchall_42
    move-exception p0

    goto :goto_4c

    .line 121
    :cond_44
    :try_start_44
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Workshop archive is too large"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_42

    .line 123
    :goto_4c
    invoke-static {v0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    throw p0
.end method

.method public static contentPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamWorkshop;->contentPath(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static contentPath(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamFiles;->relative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    new-instance v4, Ljava/util/HashSet;

    const-string v17, "gfx"

    const-string v18, "fonts"

    const-string v5, "maps"

    const-string v6, "models"

    const-string v7, "materials"

    const-string v8, "sound"

    const-string v9, "scripts"

    const-string v10, "resource"

    const-string v11, "particles"

    const-string v12, "scenes"

    const-string v13, "cfg"

    const-string v14, "media"

    const-string v15, "expressions"

    const-string v16, "shaders"

    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    sget-object v5, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v0, v5, :cond_46

    const-string v5, "gamemodes"

    const-string v6, "data_static"

    const-string v7, "lua"

    filled-new-array {v7, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_46
    const/4 v5, 0x0

    .line 86
    :goto_47
    array-length v6, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_5e

    aget-object v6, v3, v5

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    goto :goto_5f

    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_5e
    const/4 v5, -0x1

    :goto_5f
    if-gez v5, :cond_86

    .line 88
    array-length v0, v3

    if-ne v0, v7, :cond_84

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".bsp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maps/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_84
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_86
    array-length v1, v3

    invoke-static {v3, v5, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 92
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v3, ".dll"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bd

    const-string v3, ".exe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bd

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bd

    const-string v3, ".dylib"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 96
    sget-object v3, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v0, v3, :cond_bc

    move-object v1, v2

    :cond_bc
    return-object v1

    .line 94
    :cond_bd
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Workshop item requires native code, which this headset cannot load"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drain(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 156
    new-array v0, v0, [B

    .line 158
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    invoke-direct {p0, v1}, Lcom/gmodvr/flat/SteamWorkshop;->account(I)V

    goto :goto_4

    :cond_f
    return-void
.end method

.method private gma(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/gmodvr/flat/SteamWorkshop$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/SteamWorkshop$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/SteamWorkshop;)V

    new-instance v1, Lcom/gmodvr/flat/SteamWorkshop$1;

    invoke-direct {v1, p0, p2}, Lcom/gmodvr/flat/SteamWorkshop$1;-><init>(Lcom/gmodvr/flat/SteamWorkshop;Ljava/io/File;)V

    iget-object p2, p0, Lcom/gmodvr/flat/SteamWorkshop;->progress:Ljava/util/function/LongConsumer;

    invoke-static {p1, v0, v1, p2}, Lcom/gmodvr/flat/GmaArchive;->extract(Ljava/io/File;Lcom/gmodvr/flat/GmaArchive$PathPolicy;Lcom/gmodvr/flat/GmaArchive$Writer;Ljava/util/function/LongConsumer;)Lcom/gmodvr/flat/GmaArchive$Info;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/gmodvr/flat/SteamWorkshop;->gmaInfo:Lcom/gmodvr/flat/GmaArchive$Info;

    if-nez p2, :cond_16

    iput-object p1, p0, Lcom/gmodvr/flat/SteamWorkshop;->gmaInfo:Lcom/gmodvr/flat/GmaArchive$Info;

    :cond_16
    return-void
.end method

.method private synthetic lambda$gma$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/gmodvr/flat/SteamWorkshop;->profile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p1, p0}, Lcom/gmodvr/flat/SteamWorkshop;->contentPath(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static magic(Ljava/io/File;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long p0, v1, v3

    if-gez p0, :cond_13

    const/4 p0, 0x0

    goto :goto_1b

    :cond_13
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1f

    .line 198
    :goto_1b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return p0

    :catchall_1f
    move-exception p0

    .line 196
    :try_start_20
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw p0
.end method

.method private static slice(Ljava/io/RandomAccessFile;J)Ljava/io/InputStream;
    .registers 4

    .line 266
    new-instance v0, Lcom/gmodvr/flat/SteamWorkshop$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/gmodvr/flat/SteamWorkshop$2;-><init>(JLjava/io/RandomAccessFile;)V

    return-object v0
.end method

.method private static string(Ljava/io/RandomAccessFile;J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 252
    invoke-static {p0, p1, p2, v0}, Lcom/gmodvr/flat/SteamWorkshop;->string(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static string(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 256
    :goto_5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_28

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-ge v1, p3, :cond_28

    .line 257
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v1

    if-nez v1, :cond_24

    .line 258
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_24
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 261
    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid Workshop archive string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static u16(Ljava/io/RandomAccessFile;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p0

    return p0
.end method

.method private static u32(Ljava/io/RandomAccessFile;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private unpackEntry(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {p1, v0}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 43
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 44
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 46
    array-length v0, p2

    :goto_29
    if-ge v2, v0, :cond_33

    aget-object v1, p2, v2

    invoke-direct {p0, p1, v1, p3}, Lcom/gmodvr/flat/SteamWorkshop;->unpackEntry(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_33
    return-void

    .line 45
    :cond_34
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read Workshop folder"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_3c
    const-string p1, ".part"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    return-void

    .line 51
    :cond_45
    const-string p1, "(?i).*_[0-9]{3}\\.vpk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4e

    return-void

    .line 52
    :cond_4e
    invoke-static {p2}, Lcom/gmodvr/flat/SteamWorkshop;->magic(Ljava/io/File;)I

    move-result p1

    const v1, 0x55aa1234

    if-ne p1, v1, :cond_5b

    .line 53
    invoke-direct {p0, p2, p3}, Lcom/gmodvr/flat/SteamWorkshop;->vpk(Ljava/io/File;Ljava/io/File;)V

    return-void

    :cond_5b
    const v1, 0x4034b50

    if-ne p1, v1, :cond_64

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/gmodvr/flat/SteamWorkshop;->zip(Ljava/io/File;Ljava/io/File;)V

    return-void

    .line 55
    :cond_64
    iget-object v1, p0, Lcom/gmodvr/flat/SteamWorkshop;->profile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v0, v1}, Lcom/gmodvr/flat/SteamWorkshop;->contentPath(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v3, p0, Lcom/gmodvr/flat/SteamWorkshop;->profile:Lcom/gmodvr/flat/GameContentProfile;

    sget-object v4, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v3, v4, :cond_9b

    const v3, 0x44414d47

    if-ne p1, v3, :cond_79

    .line 57
    invoke-direct {p0, p2, p3}, Lcom/gmodvr/flat/SteamWorkshop;->gma(Ljava/io/File;Ljava/io/File;)V

    return-void

    :cond_79
    const v3, 0x414d5a4c

    if-eq p1, v3, :cond_94

    if-nez v1, :cond_86

    and-int/lit16 v1, p1, 0xff

    const/16 v4, 0x5d

    if-eq v1, v4, :cond_94

    .line 60
    :cond_86
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ".gma"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    :cond_94
    if-ne p1, v3, :cond_97

    const/4 v2, 0x1

    .line 62
    :cond_97
    invoke-direct {p0, p2, p3, v2}, Lcom/gmodvr/flat/SteamWorkshop;->compressedGma(Ljava/io/File;Ljava/io/File;Z)V

    return-void

    :cond_9b
    const v1, 0x50534256

    if-ne p1, v1, :cond_db

    .line 65
    const-string p1, "maps/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_db

    .line 66
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9_.-]"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bsp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    goto :goto_d4

    :cond_c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_db
    iget-object p1, p0, Lcom/gmodvr/flat/SteamWorkshop;->profile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v0, p1}, Lcom/gmodvr/flat/SteamWorkshop;->contentPath(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e4

    return-void

    .line 71
    :cond_e4
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_e9
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/gmodvr/flat/SteamWorkshop;->write(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V
    :try_end_f4
    .catchall {:try_start_e9 .. :try_end_f4} :catchall_f8

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_f8
    move-exception p0

    :try_start_f9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_fd

    goto :goto_101

    :catchall_fd
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_101
    throw p0
.end method

.method private vpk(Ljava/io/File;Ljava/io/File;)V
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    const-string v0, " "

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    :try_start_b
    invoke-static {v1}, Lcom/gmodvr/flat/SteamWorkshop;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    const-wide/32 v6, 0x55aa1234

    cmp-long v4, v4, v6

    if-nez v4, :cond_1de

    .line 204
    invoke-static {v1}, Lcom/gmodvr/flat/SteamWorkshop;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/gmodvr/flat/SteamWorkshop;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_2a

    const-wide/16 v9, 0x2

    cmp-long v4, v4, v9

    if-nez v4, :cond_1d6

    :cond_2a
    const-wide/32 v4, 0x4000000

    cmp-long v4, v6, v4

    if-gtz v4, :cond_1d6

    if-nez v8, :cond_36

    const-wide/16 v4, 0xc

    goto :goto_38

    :cond_36
    const-wide/16 v4, 0x1c

    :goto_38
    add-long/2addr v6, v4

    .line 208
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gtz v8, :cond_1ce

    .line 209
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 211
    :goto_44
    invoke-static {v1, v6, v7}, Lcom/gmodvr/flat/SteamWorkshop;->string(Ljava/io/RandomAccessFile;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1ba

    .line 213
    :goto_4e
    invoke-static {v1, v6, v7}, Lcom/gmodvr/flat/SteamWorkshop;->string(Ljava/io/RandomAccessFile;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1b4

    .line 215
    :goto_58
    invoke-static {v1, v6, v7}, Lcom/gmodvr/flat/SteamWorkshop;->string(Ljava/io/RandomAccessFile;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1ae

    .line 216
    invoke-static {v1}, Lcom/gmodvr/flat/SteamWorkshop;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v9

    .line 217
    invoke-static {v1}, Lcom/gmodvr/flat/SteamWorkshop;->u16(Ljava/io/RandomAccessFile;)I

    move-result v11

    invoke-static {v1}, Lcom/gmodvr/flat/SteamWorkshop;->u16(Ljava/io/RandomAccessFile;)I

    move-result v12

    .line 218
    invoke-static {v1}, Lcom/gmodvr/flat/SteamWorkshop;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v13

    move-wide v15, v9

    invoke-static {v1}, Lcom/gmodvr/flat/SteamWorkshop;->u32(Ljava/io/RandomAccessFile;)J

    move-result-wide v9

    .line 219
    invoke-static {v1}, Lcom/gmodvr/flat/SteamWorkshop;->u16(Ljava/io/RandomAccessFile;)I

    move-result v3

    move-wide/from16 v17, v15

    const v15, 0xffff

    if-ne v3, v15, :cond_1a6

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v15

    move-wide/from16 v19, v9

    int-to-long v9, v11

    add-long/2addr v15, v9

    cmp-long v3, v15, v6

    if-gtz v3, :cond_1a6

    .line 221
    new-array v3, v11, [B

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_9c
    .catchall {:try_start_b .. :try_end_9c} :catchall_139

    const-string v16, ""

    if-eqz v15, :cond_a5

    move-object/from16 v21, v5

    move-object/from16 v5, v16

    goto :goto_b8

    :cond_a5
    :try_start_a5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v5

    const-string v5, "/"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_b8
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c7

    :goto_c4
    move-object/from16 v5, v16

    goto :goto_d9

    :cond_c7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_c4

    :goto_d9
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, p0

    .line 223
    iget-object v11, v8, Lcom/gmodvr/flat/SteamWorkshop;->profile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v5, v11}, Lcom/gmodvr/flat/SteamWorkshop;->contentPath(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_f0

    move-object/from16 v3, p1

    move-object/from16 v5, v21

    goto/16 :goto_58

    :cond_f0
    add-long v15, v6, v13

    const/16 v5, 0x7fff

    if-eq v12, v5, :cond_145

    .line 228
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 229
    const-string v11, "_dir.vpk"

    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 230
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v29, v0

    add-int/lit8 v0, v16, -0x8

    move-object/from16 v30, v4

    const/4 v4, 0x0

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "_%03d.vpk"

    .line 231
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v11, v0}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_14c

    :catchall_139
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1e6

    .line 229
    :cond_13d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Split VPK is missing its directory filename"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_145
    move-object/from16 v29, v0

    move-object/from16 v30, v4

    move-object/from16 v0, p1

    move-wide v13, v15

    .line 234
    :goto_14c
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_151
    .catchall {:try_start_a5 .. :try_end_151} :catchall_139

    .line 235
    :try_start_151
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    cmp-long v0, v13, v11

    if-gtz v0, :cond_194

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    sub-long/2addr v11, v13

    cmp-long v0, v19, v11

    if-gtz v0, :cond_194

    .line 237
    invoke-virtual {v4, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide/from16 v11, v19

    .line 238
    invoke-static {v4, v11, v12}, Lcom/gmodvr/flat/SteamWorkshop;->slice(Ljava/io/RandomAccessFile;J)Ljava/io/InputStream;

    move-result-object v0

    .line 239
    new-instance v5, Ljava/io/SequenceInputStream;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v13, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    add-long v26, v9, v11

    .line 240
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v22, p0

    move-object/from16 v23, p2

    move-object/from16 v25, v5

    .line 239
    invoke-direct/range {v22 .. v28}, Lcom/gmodvr/flat/SteamWorkshop;->write(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V
    :try_end_184
    .catchall {:try_start_151 .. :try_end_184} :catchall_191

    .line 241
    :try_start_184
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_139

    move-object/from16 v3, p1

    move-object/from16 v5, v21

    move-object/from16 v0, v29

    move-object/from16 v4, v30

    goto/16 :goto_58

    :catchall_191
    move-exception v0

    move-object v2, v0

    goto :goto_19c

    .line 236
    :cond_194
    :try_start_194
    new-instance v0, Ljava/io/IOException;

    const-string v2, "VPK data is truncated"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19c
    .catchall {:try_start_194 .. :try_end_19c} :catchall_191

    .line 234
    :goto_19c
    :try_start_19c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19f
    .catchall {:try_start_19c .. :try_end_19f} :catchall_1a0

    goto :goto_1a5

    :catchall_1a0
    move-exception v0

    move-object v3, v0

    :try_start_1a2
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a5
    throw v2

    .line 220
    :cond_1a6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid VPK entry"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ae
    move-object/from16 v8, p0

    move-object/from16 v3, p1

    goto/16 :goto_4e

    :cond_1b4
    move-object/from16 v8, p0

    move-object/from16 v3, p1

    goto/16 :goto_44

    .line 245
    :cond_1ba
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2
    :try_end_1be
    .catchall {:try_start_1a2 .. :try_end_1be} :catchall_139

    cmp-long v0, v2, v6

    if-nez v0, :cond_1c6

    .line 246
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 245
    :cond_1c6
    :try_start_1c6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid VPK tree boundary"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1ce
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Truncated VPK directory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1d6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unsupported VPK header"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1de
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid VPK"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e6
    .catchall {:try_start_1c6 .. :try_end_1e6} :catchall_139

    .line 202
    :goto_1e6
    :try_start_1e6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e9
    .catchall {:try_start_1e6 .. :try_end_1e9} :catchall_1ea

    goto :goto_1ef

    :catchall_1ea
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1ef
    throw v2
.end method

.method private write(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 162
    iget v1, v0, Lcom/gmodvr/flat/SteamWorkshop;->entries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/gmodvr/flat/SteamWorkshop;->entries:I

    const v2, 0x30d40

    if-gt v1, v2, :cond_e4

    iget-object v1, v0, Lcom/gmodvr/flat/SteamWorkshop;->written:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 164
    invoke-static/range {p1 .. p2}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    const-wide v2, 0x1900000000L

    cmp-long v2, p4, v2

    if-gtz v2, :cond_dc

    const-wide/16 v2, 0x0

    cmp-long v5, p4, v2

    const-wide/32 v6, 0x20000000

    if-lez v5, :cond_47

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    add-long v10, p4, v6

    cmp-long v8, v8, v10

    if-ltz v8, :cond_dc

    .line 168
    :cond_47
    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 170
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v10, 0x10000

    .line 171
    :try_start_53
    new-array v10, v10, [B

    move-wide v11, v2

    move-object/from16 v2, p3

    .line 173
    :goto_58
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v13, -0x1

    if-eq v3, v13, :cond_92

    .line 174
    invoke-direct {p0, v3}, Lcom/gmodvr/flat/SteamWorkshop;->account(I)V

    int-to-long v13, v3

    add-long/2addr v11, v13

    if-ltz v5, :cond_76

    cmp-long v13, v11, p4

    if-gtz v13, :cond_6b

    goto :goto_76

    .line 176
    :cond_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Workshop archive size mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_73
    move-exception v0

    move-object v1, v0

    goto :goto_d2

    .line 177
    :cond_76
    :goto_76
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v13

    cmp-long v13, v13, v6

    if-ltz v13, :cond_8a

    const/4 v13, 0x0

    .line 178
    invoke-virtual {v9, v10, v13, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v8, v10, v13, v3}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_58

    .line 177
    :cond_8a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough space for Workshop content"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_92
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_99
    .catchall {:try_start_53 .. :try_end_99} :catchall_73

    .line 181
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    if-ltz v5, :cond_a2

    cmp-long v1, v11, p4

    if-nez v1, :cond_b1

    :cond_a2
    if-eqz p6, :cond_b9

    .line 182
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_b1

    goto :goto_b9

    .line 183
    :cond_b1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Workshop archive integrity check failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_b9
    :goto_b9
    iget-object v1, v0, Lcom/gmodvr/flat/SteamWorkshop;->profile:Lcom/gmodvr/flat/GameContentProfile;

    sget-object v2, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v1, v2, :cond_d1

    .line 185
    iget-object v0, v0, Lcom/gmodvr/flat/SteamWorkshop;->checksums:Ljava/util/List;

    new-instance v1, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    move-object v3, v1

    move-object/from16 v4, p2

    move-wide v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/gmodvr/flat/WorkshopIntegrity$Entry;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d1
    return-void

    .line 170
    :goto_d2
    :try_start_d2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_db

    :catchall_d6
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_db
    throw v1

    .line 167
    :cond_dc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough free space to unpack the Workshop item"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_e4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Workshop archive has too many or conflicting files"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zip(Ljava/io/File;Ljava/io/File;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    iget v0, p0, Lcom/gmodvr/flat/SteamWorkshop;->archiveDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gmodvr/flat/SteamWorkshop;->archiveDepth:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_c9

    .line 128
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".steam-zip-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-static {v0}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 131
    :try_start_2a
    new-instance v1, Lcom/gmodvr/flat/SteamWorkshop;

    iget-object v2, p0, Lcom/gmodvr/flat/SteamWorkshop;->progress:Ljava/util/function/LongConsumer;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/gmodvr/flat/SteamWorkshop;-><init>(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/function/LongConsumer;)V

    .line 132
    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_9a

    .line 134
    :goto_41
    :try_start_41
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 135
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5f

    const-string p1, "/+$"

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gmodvr/flat/SteamFiles;->relative(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_41

    :catchall_5d
    move-exception p1

    goto :goto_b6

    .line 137
    :cond_5f
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->relative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, v0

    move-object v5, v9

    invoke-direct/range {v2 .. v8}, Lcom/gmodvr/flat/SteamWorkshop;->write(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V

    .line 140
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_71
    .catchall {:try_start_41 .. :try_end_71} :catchall_5d

    goto :goto_41

    .line 142
    :cond_72
    :try_start_72
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 143
    iget-wide v2, p0, Lcom/gmodvr/flat/SteamWorkshop;->expanded:J

    iget-wide v4, v1, Lcom/gmodvr/flat/SteamWorkshop;->expanded:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/gmodvr/flat/SteamWorkshop;->expanded:J

    const-wide v4, 0x1900000000L

    cmp-long p1, v2, v4

    if-gtz p1, :cond_ae

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_a6

    .line 147
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 148
    array-length v1, p1

    const/4 v2, 0x0

    :goto_90
    if-ge v2, v1, :cond_9c

    aget-object v3, p1, v2

    invoke-direct {p0, v0, v3, p2}, Lcom/gmodvr/flat/SteamWorkshop;->unpackEntry(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    :try_end_97
    .catchall {:try_start_72 .. :try_end_97} :catchall_9a

    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    :catchall_9a
    move-exception p1

    goto :goto_bf

    .line 150
    :cond_9c
    iget p1, p0, Lcom/gmodvr/flat/SteamWorkshop;->archiveDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/gmodvr/flat/SteamWorkshop;->archiveDepth:I

    .line 151
    invoke-static {v0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    return-void

    .line 146
    :cond_a6
    :try_start_a6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot read unpacked Workshop archive"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_ae
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Workshop archive is too large"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b6
    .catchall {:try_start_a6 .. :try_end_b6} :catchall_9a

    .line 132
    :goto_b6
    :try_start_b6
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_be

    :catchall_ba
    move-exception p2

    :try_start_bb
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_be
    throw p1
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_9a

    .line 150
    :goto_bf
    iget p2, p0, Lcom/gmodvr/flat/SteamWorkshop;->archiveDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/gmodvr/flat/SteamWorkshop;->archiveDepth:I

    .line 151
    invoke-static {v0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    .line 152
    throw p1

    .line 127
    :cond_c9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Workshop archives are nested too deeply"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public checksums()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopIntegrity$Entry;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamWorkshop;->checksums:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public gmaInfo()Lcom/gmodvr/flat/GmaArchive$Info;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/gmodvr/flat/SteamWorkshop;->gmaInfo:Lcom/gmodvr/flat/GmaArchive$Info;

    return-object p0
.end method

.method public unpack(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-static {p2}, Lcom/gmodvr/flat/SteamFiles;->mkdir(Ljava/io/File;)V

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 34
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 35
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    invoke-direct {p0, p1, v3, p2}, Lcom/gmodvr/flat/SteamWorkshop;->unpackEntry(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 33
    :cond_1e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read Workshop content"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_26
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/gmodvr/flat/SteamWorkshop;->unpackEntry(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 37
    :cond_2d
    iget p0, p0, Lcom/gmodvr/flat/SteamWorkshop;->entries:I

    if-eqz p0, :cond_32

    return-void

    :cond_32
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This Workshop item contains no supported game content"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.gmodvr.flat.SteamWorkshop.AnonymousClass1 (com.gmodvr.flat.SteamWorkshop$1)
.class Lcom/gmodvr/flat/SteamWorkshop$1;
.super Ljava/lang/Object;
.source "SteamWorkshop.java"

# interfaces
.implements Lcom/gmodvr/flat/GmaArchive$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/SteamWorkshop;->gma(Ljava/io/File;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/SteamWorkshop;

.field final synthetic val$output:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/SteamWorkshop;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/gmodvr/flat/SteamWorkshop$1;->this$0:Lcom/gmodvr/flat/SteamWorkshop;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamWorkshop$1;->val$output:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 109
    iget-object p0, p0, Lcom/gmodvr/flat/SteamWorkshop$1;->this$0:Lcom/gmodvr/flat/SteamWorkshop;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamWorkshop;->-$$Nest$mdrain(Lcom/gmodvr/flat/SteamWorkshop;Ljava/io/InputStream;)V

    return-void
.end method

.method public write(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/gmodvr/flat/SteamWorkshop$1;->this$0:Lcom/gmodvr/flat/SteamWorkshop;

    iget-object v1, p0, Lcom/gmodvr/flat/SteamWorkshop$1;->val$output:Ljava/io/File;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/gmodvr/flat/SteamWorkshop;->-$$Nest$mwrite(Lcom/gmodvr/flat/SteamWorkshop;Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/Long;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamWorkshop.AnonymousClass2 (com.gmodvr.flat.SteamWorkshop$2)
.class Lcom/gmodvr/flat/SteamWorkshop$2;
.super Ljava/io/InputStream;
.source "SteamWorkshop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/SteamWorkshop;->slice(Ljava/io/RandomAccessFile;J)Ljava/io/InputStream;
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

    .line 266
    iput-wide p1, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->val$length:J

    iput-object p3, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->val$data:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 267
    iput-wide p1, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->remaining:J

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

    .line 269
    iget-wide v0, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 270
    :cond_a
    iget-object v0, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->val$data:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_1a

    iget-wide v1, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->remaining:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->remaining:J

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

    .line 274
    :cond_4
    iget-wide v0, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    const/4 p0, -0x1

    return p0

    .line 275
    :cond_e
    iget-object v2, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->val$data:Ljava/io/RandomAccessFile;

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-ltz p1, :cond_23

    .line 276
    iget-wide p2, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->remaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/gmodvr/flat/SteamWorkshop$2;->remaining:J

    return p1

    :cond_23
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

###### Class com.gmodvr.flat.SteamWorkshop$$ExternalSyntheticLambda0 (com.gmodvr.flat.SteamWorkshop$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/SteamWorkshop$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/GmaArchive$PathPolicy;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamWorkshop;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamWorkshop;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamWorkshop$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/SteamWorkshop;

    return-void
.end method


# virtual methods
.method public final map(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamWorkshop$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/SteamWorkshop;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamWorkshop;->$r8$lambda$NOIHElHGkcfe-mF_jij6mN28kk4(Lcom/gmodvr/flat/SteamWorkshop;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
