###### Class com.github.luben.zstd.ZstdDirectBufferDecompressingStreamNoFinalizer (com.github.luben.zstd.ZstdDirectBufferDecompressingStreamNoFinalizer)
.class public Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;
.super Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;
.source "ZstdDirectBufferDecompressingStreamNoFinalizer.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 10
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 14
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 18
    iput-object p1, p0, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->createDStream()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;->stream:J

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->initDStream(J)J

    return-void

    .line 16
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source buffer should be a direct buffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native createDStreamNative()J
.end method

.method private native decompressStreamNative(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J
.end method

.method private static native freeDStreamNative(J)J
.end method

.method private native initDStreamNative(J)J
.end method

.method private static native recommendedDOutSizeNative()J
.end method

.method public static recommendedTargetBufferSize()I
    .registers 2

    .line 52
    invoke-static {}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->recommendedDOutSizeNative()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public createDStream()J
    .registers 3

    .line 33
    invoke-static {}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->createDStreamNative()J

    move-result-wide v0

    return-wide v0
.end method

.method public decompressStream(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J
    .registers 9

    .line 48
    invoke-direct/range {p0 .. p8}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->decompressStreamNative(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public freeDStream(J)J
    .registers 3

    .line 38
    invoke-static {p1, p2}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->freeDStreamNative(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public initDStream(J)J
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->initDStreamNative(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/github/luben/zstd/BaseZstdBufferDecompressingStreamNoFinalizer;->readInternal(Ljava/nio/ByteBuffer;Z)I

    move-result p0

    return p0

    .line 26
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target buffer should be a direct buffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
