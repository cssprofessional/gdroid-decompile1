###### Class in.dragonbra.javasteam.util.ZipUtil (in.dragonbra.javasteam.util.ZipUtil)
.class public final Lin/dragonbra/javasteam/util/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.kt"


# static fields
.field public static final INSTANCE:Lin/dragonbra/javasteam/util/ZipUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/util/ZipUtil;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/ZipUtil;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/ZipUtil;->INSTANCE:Lin/dragonbra/javasteam/util/ZipUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decompress(Lin/dragonbra/javasteam/util/stream/MemoryStream;[BZ)I
    .registers 7

    const-string v0, "ms"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/util/zip/ZipInputStream;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 12
    :try_start_11
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 15
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    .line 17
    array-length v2, p1

    if-lt v2, v1, :cond_50

    const/4 v2, 0x0

    .line 21
    invoke-static {v0, p1, v2, v1}, Lin/dragonbra/javasteam/util/compat/InputStreamCompatKt;->readNBytesCompat(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 23
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_48

    if-eqz p2, :cond_43

    .line 27
    invoke-static {p1, v2, v1}, Lin/dragonbra/javasteam/util/Utils;->crc32([BII)J

    move-result-wide p1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    cmp-long p0, p1, v2

    if-nez p0, :cond_39

    goto :goto_43

    .line 28
    :cond_39
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Checksum validation failed for decompressed file"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p0

    goto :goto_60

    :cond_43
    :goto_43
    const/4 p0, 0x0

    .line 11
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v1

    .line 24
    :cond_48
    :try_start_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given stream should only contain one zip entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The destination buffer is smaller than the decompressed data size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Did not find any zip entries in the given stream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_41

    .line 11
    :goto_60
    :try_start_60
    throw p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic decompress$default(Lin/dragonbra/javasteam/util/stream/MemoryStream;[BZILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 10
    :cond_5
    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/util/ZipUtil;->decompress(Lin/dragonbra/javasteam/util/stream/MemoryStream;[BZ)I

    move-result p0

    return p0
.end method
