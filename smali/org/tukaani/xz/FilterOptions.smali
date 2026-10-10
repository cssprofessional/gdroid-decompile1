###### Class org.tukaani.xz.FilterOptions (org.tukaani.xz.FilterOptions)
.class public abstract Lorg/tukaani/xz/FilterOptions;
.super Ljava/lang/Object;
.source "FilterOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoderMemoryUsage([Lorg/tukaani/xz/FilterOptions;)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 39
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_f

    .line 40
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/tukaani/xz/FilterOptions;->getDecoderMemoryUsage()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    return v1
.end method

.method public static getEncoderMemoryUsage([Lorg/tukaani/xz/FilterOptions;)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 24
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_f

    .line 25
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/tukaani/xz/FilterOptions;->getEncoderMemoryUsage()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    return v1
.end method


# virtual methods
.method public abstract getDecoderMemoryUsage()I
.end method

.method public abstract getEncoderMemoryUsage()I
.end method

.method public abstract getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/FilterOptions;->getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public abstract getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;
    .registers 3

    .line 60
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/FilterOptions;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public abstract getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
.end method
