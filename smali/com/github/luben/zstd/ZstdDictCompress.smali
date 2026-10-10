###### Class com.github.luben.zstd.ZstdDictCompress (com.github.luben.zstd.ZstdDictCompress)
.class public Lcom/github/luben/zstd/ZstdDictCompress;
.super Lcom/github/luben/zstd/SharedDictBase;
.source "ZstdDictCompress.java"


# instance fields
.field private level:I

.field private nativePtr:J

.field private sharedDict:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 9
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 4

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/github/luben/zstd/ZstdDictCompress;-><init>(Ljava/nio/ByteBuffer;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IZ)V
    .registers 14

    .line 83
    invoke-direct {p0}, Lcom/github/luben/zstd/SharedDictBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdDictCompress;->nativePtr:J

    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lcom/github/luben/zstd/ZstdDictCompress;->sharedDict:Ljava/nio/ByteBuffer;

    .line 16
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->defaultCompressionLevel()I

    .line 84
    iput p2, p0, Lcom/github/luben/zstd/ZstdDictCompress;->level:I

    .line 85
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    sub-int v7, v2, v3

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_4a

    if-ltz v7, :cond_42

    .line 92
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/github/luben/zstd/ZstdDictCompress;->initDirect(Ljava/nio/ByteBuffer;IIII)V

    .line 94
    iget-wide v2, p0, Lcom/github/luben/zstd/ZstdDictCompress;->nativePtr:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_3a

    if-eqz p3, :cond_36

    .line 98
    iput-object p1, p0, Lcom/github/luben/zstd/ZstdDictCompress;->sharedDict:Ljava/nio/ByteBuffer;

    .line 102
    :cond_36
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->storeFence()V

    return-void

    .line 95
    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ZSTD_createCDict failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dict cannot be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dict must be a direct buffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BI)V
    .registers 5

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/github/luben/zstd/ZstdDictCompress;-><init>([BIII)V

    return-void
.end method

.method public constructor <init>([BIII)V
    .registers 8

    .line 49
    invoke-direct {p0}, Lcom/github/luben/zstd/SharedDictBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdDictCompress;->nativePtr:J

    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lcom/github/luben/zstd/ZstdDictCompress;->sharedDict:Ljava/nio/ByteBuffer;

    .line 16
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->defaultCompressionLevel()I

    .line 50
    iput p4, p0, Lcom/github/luben/zstd/ZstdDictCompress;->level:I

    .line 51
    array-length v2, p1

    sub-int/2addr v2, p2

    if-ltz v2, :cond_28

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/luben/zstd/ZstdDictCompress;->init([BIII)V

    .line 57
    iget-wide p1, p0, Lcom/github/luben/zstd/ZstdDictCompress;->nativePtr:J

    cmp-long p1, v0, p1

    if-eqz p1, :cond_20

    .line 62
    invoke-virtual {p0}, Lcom/github/luben/zstd/AutoCloseBase;->storeFence()V

    return-void

    .line 58
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ZSTD_createCDict failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dictionary buffer is to short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native free()V
.end method

.method private native init([BIII)V
.end method

.method private native initDirect(Ljava/nio/ByteBuffer;IIII)V
.end method


# virtual methods
.method public bridge synthetic close()V
    .registers 1

    .line 6
    invoke-super {p0}, Lcom/github/luben/zstd/AutoCloseBase;->close()V

    return-void
.end method

.method public doClose()V
    .registers 5

    .line 112
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDictCompress;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 113
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDictCompress;->free()V

    .line 114
    iput-wide v2, p0, Lcom/github/luben/zstd/ZstdDictCompress;->nativePtr:J

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDictCompress;->sharedDict:Ljava/nio/ByteBuffer;

    :cond_10
    return-void
.end method

.method public getByReferenceBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/github/luben/zstd/ZstdDictCompress;->sharedDict:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public level()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/github/luben/zstd/ZstdDictCompress;->level:I

    return p0
.end method
