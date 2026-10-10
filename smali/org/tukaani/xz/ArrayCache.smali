###### Class org.tukaani.xz.ArrayCache (org.tukaani.xz.ArrayCache)
.class public Lorg/tukaani/xz/ArrayCache;
.super Ljava/lang/Object;
.source "ArrayCache.java"


# static fields
.field private static volatile defaultCache:Lorg/tukaani/xz/ArrayCache;

.field private static final dummyCache:Lorg/tukaani/xz/ArrayCache;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 69
    const-string v0, "Dummy"

    new-instance v1, Lorg/tukaani/xz/ArrayCache;

    invoke-direct {v1}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    sput-object v1, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    .line 78
    const-string v2, "org.tukaani.xz.ArrayCache"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    move-object v2, v0

    .line 82
    :cond_12
    const-string v3, "Basic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 84
    sput-object v1, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    goto :goto_45

    .line 92
    :cond_23
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported value \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3f
    invoke-static {}, Lorg/tukaani/xz/BasicArrayCache;->getInstance()Lorg/tukaani/xz/BasicArrayCache;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    :goto_45
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCache()Lorg/tukaani/xz/ArrayCache;
    .registers 1

    .line 115
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    return-object v0
.end method

.method public static getDummyCache()Lorg/tukaani/xz/ArrayCache;
    .registers 1

    .line 104
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    return-object v0
.end method

.method public static setDefaultCache(Lorg/tukaani/xz/ArrayCache;)V
    .registers 1

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    sput-object p0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    return-void
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .registers 3

    .line 155
    new-array p0, p1, [B

    return-object p0
.end method

.method public getIntArray(IZ)[I
    .registers 3

    .line 182
    new-array p0, p1, [I

    return-object p0
.end method

.method public putArray([B)V
    .registers 2

    .line 0
    return-void
.end method

.method public putArray([I)V
    .registers 2

    .line 0
    return-void
.end method
