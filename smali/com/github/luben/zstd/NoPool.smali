###### Class com.github.luben.zstd.NoPool (com.github.luben.zstd.NoPool)
.class public Lcom/github/luben/zstd/NoPool;
.super Ljava/lang/Object;
.source "NoPool.java"

# interfaces
.implements Lcom/github/luben/zstd/BufferPool;


# static fields
.field public static final INSTANCE:Lcom/github/luben/zstd/BufferPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/github/luben/zstd/NoPool;

    invoke-direct {v0}, Lcom/github/luben/zstd/NoPool;-><init>()V

    sput-object v0, Lcom/github/luben/zstd/NoPool;->INSTANCE:Lcom/github/luben/zstd/BufferPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public release(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 0
    return-void
.end method
