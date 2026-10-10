###### Class in.dragonbra.javasteam.util.VZipUtil (in.dragonbra.javasteam.util.VZipUtil)
.class public final Lin/dragonbra/javasteam/util/VZipUtil;
.super Ljava/lang/Object;
.source "VZipUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVZipUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VZipUtil.kt\nin/dragonbra/javasteam/util/VZipUtil\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,117:1\n53#2:118\n*S KotlinDebug\n*F\n+ 1 VZipUtil.kt\nin/dragonbra/javasteam/util/VZipUtil\n*L\n15#1:118\n*E\n"
.end annotation


# static fields
.field private static final FOOTER_LENGTH:I = 0xa

.field private static final HEADER_LENGTH:I = 0x7

.field public static final INSTANCE:Lin/dragonbra/javasteam/util/VZipUtil;

.field private static final VERSION:B = 0x61t

.field private static final VZIP_FOOTER:S = 0x767as

.field private static final VZIP_HEADER:S = 0x5a56s

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;

.field private static final windowBufferPool:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$J71YajcDfPLMDgNzqJVWMBoAOyg()[B
    .registers 1

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/util/VZipUtil;->windowBufferPool$lambda$0()[B

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lin/dragonbra/javasteam/util/VZipUtil;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/VZipUtil;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/VZipUtil;->INSTANCE:Lin/dragonbra/javasteam/util/VZipUtil;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/util/VZipUtil;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 15
    sput-object v0, Lin/dragonbra/javasteam/util/VZipUtil;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    .line 25
    new-instance v0, Lin/dragonbra/javasteam/util/VZipUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/VZipUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/VZipUtil;->windowBufferPool:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final compress([B)[B
    .registers 2

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "VZipUtil.compress is not implemented."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final decompress(Lin/dragonbra/javasteam/util/stream/MemoryStream;[BZ)I
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v9, "Missing implementation of org.tukaani:xz"

    const-string v1, "ms"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "destination"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 32
    :try_start_12
    new-instance v12, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {v12, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_12 .. :try_end_17} :catch_96
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_17} :catch_94

    .line 33
    :try_start_17
    invoke-virtual {v12}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readShort()S

    move-result v1

    const/16 v2, 0x5a56

    if-ne v1, v2, :cond_b9

    .line 37
    invoke-virtual {v12}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_b1

    .line 44
    invoke-virtual {v12}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    .line 47
    invoke-virtual {v12}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readByte()B

    move-result v5

    .line 48
    invoke-virtual {v12}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v6

    .line 49
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getPosition()J

    move-result-wide v1

    .line 52
    sget-object v3, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->END:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    const-wide/16 v13, -0xa

    invoke-virtual {v0, v13, v14, v3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J

    .line 54
    invoke-virtual {v12}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v13

    .line 55
    invoke-virtual {v12}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v14

    .line 57
    invoke-virtual {v12}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readShort()S

    move-result v3

    const/16 v4, 0x767a

    if-ne v3, v4, :cond_a9

    .line 61
    array-length v3, v8

    if-lt v3, v14, :cond_a1

    .line 66
    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->setPosition(J)V

    const/16 v1, 0x1000

    .line 70
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x800000

    if-gt v1, v2, :cond_6a

    .line 72
    sget-object v1, Lin/dragonbra/javasteam/util/VZipUtil;->windowBufferPool:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_65
    move-object v7, v1

    goto :goto_6d

    :catchall_67
    move-exception v0

    move-object v1, v0

    goto :goto_c1

    .line 74
    :cond_6a
    new-array v1, v1, [B

    goto :goto_65

    .line 76
    :goto_6d
    new-instance v15, Lorg/tukaani/xz/LZMAInputStream;

    int-to-long v3, v14

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;JBI[B)V
    :try_end_76
    .catchall {:try_start_17 .. :try_end_76} :catchall_67

    const/4 v0, 0x0

    .line 83
    :try_start_77
    invoke-static {v15, v8, v0, v14}, Lin/dragonbra/javasteam/util/compat/InputStreamCompatKt;->readNBytesCompat(Ljava/io/InputStream;[BII)I

    move-result v1
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_98

    .line 82
    :try_start_7b
    invoke-static {v15, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_90

    .line 87
    invoke-static {v8, v0, v1}, Lin/dragonbra/javasteam/util/Utils;->crc32([BII)J

    move-result-wide v2

    long-to-int v0, v2

    if-ne v0, v13, :cond_88

    goto :goto_90

    .line 89
    :cond_88
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v1, "CRC does not match decompressed data. VZip data may be corrupted."

    invoke-direct {v0, v1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_90
    .catchall {:try_start_7b .. :try_end_90} :catchall_67

    .line 32
    :cond_90
    :goto_90
    :try_start_90
    invoke-static {v12, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_93
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_90 .. :try_end_93} :catch_96
    .catch Ljava/lang/ClassNotFoundException; {:try_start_90 .. :try_end_93} :catch_94

    return v1

    :catch_94
    move-exception v0

    goto :goto_c8

    :catch_96
    move-exception v0

    goto :goto_ce

    :catchall_98
    move-exception v0

    move-object v1, v0

    .line 82
    :try_start_9a
    throw v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception v0

    move-object v2, v0

    :try_start_9d
    invoke-static {v15, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 62
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination buffer is smaller than the decompressed data size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting VZipFooter at end of stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting VZip version \'a\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_b9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting VZipHeader at start of stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c1
    .catchall {:try_start_9d .. :try_end_c1} :catchall_67

    .line 32
    :goto_c1
    :try_start_c1
    throw v1
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    :catchall_c2
    move-exception v0

    move-object v2, v0

    :try_start_c4
    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_c8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c4 .. :try_end_c8} :catch_96
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c4 .. :try_end_c8} :catch_94

    .line 99
    :goto_c8
    sget-object v1, Lin/dragonbra/javasteam/util/VZipUtil;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-static {v1, v9, v11, v10, v11}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 100
    throw v0

    .line 96
    :goto_ce
    sget-object v1, Lin/dragonbra/javasteam/util/VZipUtil;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-static {v1, v9, v11, v10, v11}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 97
    throw v0
.end method

.method public static synthetic decompress$default(Lin/dragonbra/javasteam/util/stream/MemoryStream;[BZILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 30
    :cond_5
    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/util/VZipUtil;->decompress(Lin/dragonbra/javasteam/util/stream/MemoryStream;[BZ)I

    move-result p0

    return p0
.end method

.method private static final windowBufferPool$lambda$0()[B
    .registers 1

    const/high16 v0, 0x800000

    .line 26
    new-array v0, v0, [B

    return-object v0
.end method

###### Class in.dragonbra.javasteam.util.VZipUtil$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.util.VZipUtil$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/util/VZipUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/util/VZipUtil;->$r8$lambda$J71YajcDfPLMDgNzqJVWMBoAOyg()[B

    move-result-object p0

    return-object p0
.end method
