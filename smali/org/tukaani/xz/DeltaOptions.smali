###### Class org.tukaani.xz.DeltaOptions (org.tukaani.xz.DeltaOptions)
.class public final Lorg/tukaani/xz/DeltaOptions;
.super Lorg/tukaani/xz/FilterOptions;
.source "DeltaOptions.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DISTANCE_MAX:I = 0x100

.field public static final DISTANCE_MIN:I = 0x1


# instance fields
.field private distance:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    .line 46
    invoke-virtual {p0, p1}, Lorg/tukaani/xz/DeltaOptions;->setDistance(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1

    .line 98
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 101
    :catch_5
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public getDecoderMemoryUsage()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getDistance()I
    .registers 1

    .line 66
    iget p0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    return p0
.end method

.method public getEncoderMemoryUsage()I
    .registers 1

    .line 71
    invoke-static {}, Lorg/tukaani/xz/DeltaOutputStream;->getMemoryUsage()I

    move-result p0

    return p0
.end method

.method public getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
    .registers 2

    .line 92
    new-instance v0, Lorg/tukaani/xz/DeltaEncoder;

    invoke-direct {v0, p0}, Lorg/tukaani/xz/DeltaEncoder;-><init>(Lorg/tukaani/xz/DeltaOptions;)V

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .registers 3

    .line 87
    new-instance p2, Lorg/tukaani/xz/DeltaInputStream;

    iget p0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    invoke-direct {p2, p1, p0}, Lorg/tukaani/xz/DeltaInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object p2
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .registers 3

    .line 77
    new-instance p2, Lorg/tukaani/xz/DeltaOutputStream;

    invoke-direct {p2, p1, p0}, Lorg/tukaani/xz/DeltaOutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/DeltaOptions;)V

    return-object p2
.end method

.method public setDistance(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    const/16 v0, 0x100

    if-gt p1, v0, :cond_a

    .line 59
    iput p1, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    return-void

    .line 55
    :cond_a
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delta distance must be in the range [1, 256]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
