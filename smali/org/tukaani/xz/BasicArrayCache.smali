###### Class org.tukaani.xz.BasicArrayCache (org.tukaani.xz.BasicArrayCache)
.class public Lorg/tukaani/xz/BasicArrayCache;
.super Lorg/tukaani/xz/ArrayCache;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/BasicArrayCache$CacheMap;,
        Lorg/tukaani/xz/BasicArrayCache$LazyHolder;,
        Lorg/tukaani/xz/BasicArrayCache$CyclicStack;
    }
.end annotation


# static fields
.field private static final CACHEABLE_SIZE_MIN:I = 0x8000

.field private static final ELEMENTS_PER_STACK:I = 0x200

.field private static final STACKS_MAX:I = 0x20


# instance fields
.field private final byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "[B>;"
        }
    .end annotation
.end field

.field private final intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    .line 157
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache$CacheMap;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    .line 162
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache$CacheMap;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    return-void
.end method

.method private static getArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "TT;>;I)TT;"
        }
    .end annotation

    const v0, 0x8000

    const/4 v1, 0x0

    if-ge p1, v0, :cond_7

    return-object v1

    .line 176
    :cond_7
    monitor-enter p0

    .line 177
    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;

    .line 178
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_26

    if-nez p1, :cond_16

    return-object v1

    .line 186
    :cond_16
    invoke-virtual {p1}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/Reference;

    if-nez p0, :cond_1f

    return-object v1

    .line 190
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_16

    return-object p0

    :catchall_26
    move-exception p1

    .line 178
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public static getInstance()Lorg/tukaani/xz/BasicArrayCache;
    .registers 1

    .line 151
    sget-object v0, Lorg/tukaani/xz/BasicArrayCache$LazyHolder;->INSTANCE:Lorg/tukaani/xz/BasicArrayCache;

    return-object v0
.end method

.method private static putArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "TT;>;TT;I)V"
        }
    .end annotation

    const v0, 0x8000

    if-ge p2, v0, :cond_6

    return-void

    .line 207
    :cond_6
    monitor-enter p0

    .line 212
    :try_start_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;

    if-nez v0, :cond_23

    .line 214
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;-><init>(Lorg/tukaani/xz/BasicArrayCache$1;)V

    .line 215
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_2d

    .line 217
    :cond_23
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_21

    .line 219
    new-instance p0, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->push(Ljava/lang/Object;)V

    return-void

    .line 217
    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_21

    throw p1
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .registers 3

    .line 235
    iget-object p0, p0, Lorg/tukaani/xz/BasicArrayCache;->byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-static {p0, p1}, Lorg/tukaani/xz/BasicArrayCache;->getArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_d

    .line 238
    new-array p0, p1, [B

    goto :goto_13

    :cond_d
    if-eqz p2, :cond_13

    const/4 p1, 0x0

    .line 240
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    :cond_13
    :goto_13
    return-object p0
.end method

.method public getIntArray(IZ)[I
    .registers 3

    .line 261
    iget-object p0, p0, Lorg/tukaani/xz/BasicArrayCache;->intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-static {p0, p1}, Lorg/tukaani/xz/BasicArrayCache;->getArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_d

    .line 264
    new-array p0, p1, [I

    goto :goto_13

    :cond_d
    if-eqz p2, :cond_13

    const/4 p1, 0x0

    .line 266
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    :cond_13
    :goto_13
    return-object p0
.end method

.method public putArray([B)V
    .registers 3

    .line 253
    iget-object p0, p0, Lorg/tukaani/xz/BasicArrayCache;->byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    array-length v0, p1

    invoke-static {p0, p1, v0}, Lorg/tukaani/xz/BasicArrayCache;->putArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;Ljava/lang/Object;I)V

    return-void
.end method

.method public putArray([I)V
    .registers 3

    .line 279
    iget-object p0, p0, Lorg/tukaani/xz/BasicArrayCache;->intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    array-length v0, p1

    invoke-static {p0, p1, v0}, Lorg/tukaani/xz/BasicArrayCache;->putArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;Ljava/lang/Object;I)V

    return-void
.end method

###### Class org.tukaani.xz.BasicArrayCache.AnonymousClass1 (org.tukaani.xz.BasicArrayCache$1)
.class synthetic Lorg/tukaani/xz/BasicArrayCache$1;
.super Ljava/lang/Object;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class org.tukaani.xz.BasicArrayCache.CacheMap (org.tukaani.xz.BasicArrayCache$CacheMap)
.class Lorg/tukaani/xz/BasicArrayCache$CacheMap;
.super Ljava/util/LinkedHashMap;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<",
        "Ljava/lang/ref/Reference<",
        "TT;>;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 4

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x40

    .line 124
    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<",
            "Ljava/lang/ref/Reference<",
            "TT;>;>;>;)Z"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    const/16 p1, 0x20

    if-le p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

###### Class org.tukaani.xz.BasicArrayCache.CyclicStack (org.tukaani.xz.BasicArrayCache$CyclicStack)
.class Lorg/tukaani/xz/BasicArrayCache$CyclicStack;
.super Ljava/lang/Object;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CyclicStack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private pos:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/tukaani/xz/BasicArrayCache$1;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized pop()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 83
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, -0x1

    and-int/lit16 v0, v1, 0x1ff

    .line 84
    iput v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 85
    monitor-exit p0

    return-object v2

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized push(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_1
    iget v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0x1ff

    iput v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    .line 94
    iget-object v1, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    aput-object p1, v1, v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 95
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

###### Class org.tukaani.xz.BasicArrayCache.LazyHolder (org.tukaani.xz.BasicArrayCache$LazyHolder)
.class final Lorg/tukaani/xz/BasicArrayCache$LazyHolder;
.super Ljava/lang/Object;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lorg/tukaani/xz/BasicArrayCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache;

    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache;-><init>()V

    sput-object v0, Lorg/tukaani/xz/BasicArrayCache$LazyHolder;->INSTANCE:Lorg/tukaani/xz/BasicArrayCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
