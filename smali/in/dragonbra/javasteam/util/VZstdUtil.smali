###### Class in.dragonbra.javasteam.util.VZstdUtil (in.dragonbra.javasteam.util.VZstdUtil)
.class public final Lin/dragonbra/javasteam/util/VZstdUtil;
.super Ljava/lang/Object;
.source "VZstdUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVZstdUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VZstdUtil.kt\nin/dragonbra/javasteam/util/VZstdUtil\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,83:1\n53#2:84\n*S KotlinDebug\n*F\n+ 1 VZstdUtil.kt\nin/dragonbra/javasteam/util/VZstdUtil\n*L\n15#1:84\n*E\n"
.end annotation


# static fields
.field private static final FOOTER_SIZE:I = 0xf

.field private static final HEADER_SIZE:I = 0x8

.field public static final INSTANCE:Lin/dragonbra/javasteam/util/VZstdUtil;

.field private static final VZSTD_HEADER:I = 0x615a5356

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lin/dragonbra/javasteam/util/VZstdUtil;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/VZstdUtil;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/VZstdUtil;->INSTANCE:Lin/dragonbra/javasteam/util/VZstdUtil;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/util/VZstdUtil;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 15
    sput-object v0, Lin/dragonbra/javasteam/util/VZstdUtil;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decompress([B[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/util/VZstdUtil;->decompress$default([B[BZILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final decompress([B[BZ)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    array-length v0, p0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d7

    .line 25
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const v3, 0x615a5356

    if-ne v2, v3, :cond_cf

    .line 35
    array-length v2, p0

    add-int/lit8 v3, v2, -0xf

    .line 36
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    add-int/lit8 v2, v2, -0xb

    .line 37
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 45
    array-length v2, p0

    add-int/lit8 v2, v2, -0x3

    aget-byte v2, p0, v2

    const/16 v4, 0x7a

    if-ne v2, v4, :cond_c7

    .line 46
    array-length v2, p0

    const/4 v4, 0x2

    sub-int/2addr v2, v4

    aget-byte v2, p0, v2

    const/16 v5, 0x73

    if-ne v2, v5, :cond_c7

    .line 47
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    const/16 v5, 0x76

    if-ne v2, v5, :cond_c7

    .line 52
    array-length v2, p1

    if-lt v2, v0, :cond_bf

    .line 56
    array-length v2, p0

    add-int/lit8 v2, v2, -0xf

    const/16 v5, 0x8

    invoke-static {p0, v5, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p0

    .line 59
    :try_start_57
    invoke-static {p1, p0}, Lcom/github/luben/zstd/Zstd;->decompress([B[B)J

    move-result-wide v5

    int-to-long v7, v0

    cmp-long p0, v5, v7

    if-nez p0, :cond_77

    if-eqz p2, :cond_76

    .line 66
    invoke-static {p1, v1, v0}, Lin/dragonbra/javasteam/util/Utils;->crc32([BII)J

    move-result-wide p0

    long-to-int p0, p0

    if-ne p0, v3, :cond_6a

    goto :goto_76

    .line 68
    :cond_6a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CRC does not match decompressed data. VZstd data may be corrupted."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_72
    move-exception p0

    goto :goto_9b

    :catch_74
    move-exception p0

    goto :goto_b6

    :cond_76
    :goto_76
    return v0

    .line 62
    :cond_77
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to decompress Zstd (expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes, got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_57 .. :try_end_9b} :catch_74
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_9b} :catch_72

    .line 79
    :goto_9b
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decompress Zstd data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 75
    :goto_b6
    sget-object p1, Lin/dragonbra/javasteam/util/VZstdUtil;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string p2, "Missing implementation of com.github.luben:zstd-jni"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v4, v0}, Lin/dragonbra/javasteam/util/log/Logger;->error$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 76
    throw p0

    .line 53
    :cond_bf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The destination buffer is smaller than the decompressed data size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_c7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Expecting VZstdFooter at end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_cf
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Expecting VZstdHeader at start of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_d7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Buffer too small to contain VZstd header and footer"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic decompress$default([B[BZILjava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 20
    :cond_5
    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/util/VZstdUtil;->decompress([B[BZ)I

    move-result p0

    return p0
.end method
