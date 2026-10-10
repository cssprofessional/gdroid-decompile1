###### Class org.tukaani.xz.BCJOptions (org.tukaani.xz.BCJOptions)
.class abstract Lorg/tukaani/xz/BCJOptions;
.super Lorg/tukaani/xz/FilterOptions;
.source "BCJOptions.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final alignment:I

.field startOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 11
    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lorg/tukaani/xz/BCJOptions;->startOffset:I

    .line 12
    iput p1, p0, Lorg/tukaani/xz/BCJOptions;->alignment:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1

    .line 49
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 52
    :catch_5
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public getDecoderMemoryUsage()I
    .registers 1

    .line 43
    invoke-static {}, Lorg/tukaani/xz/SimpleInputStream;->getMemoryUsage()I

    move-result p0

    return p0
.end method

.method public getEncoderMemoryUsage()I
    .registers 1

    .line 38
    invoke-static {}, Lorg/tukaani/xz/SimpleOutputStream;->getMemoryUsage()I

    move-result p0

    return p0
.end method

.method public getStartOffset()I
    .registers 1

    .line 33
    iget p0, p0, Lorg/tukaani/xz/BCJOptions;->startOffset:I

    return p0
.end method

.method public setStartOffset(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 22
    iget v0, p0, Lorg/tukaani/xz/BCJOptions;->alignment:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_a

    .line 26
    iput p1, p0, Lorg/tukaani/xz/BCJOptions;->startOffset:I

    return-void

    .line 23
    :cond_a
    new-instance p1, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start offset must be a multiple of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/tukaani/xz/BCJOptions;->alignment:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
