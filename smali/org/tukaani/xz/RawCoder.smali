###### Class org.tukaani.xz.RawCoder (org.tukaani.xz.RawCoder)
.class Lorg/tukaani/xz/RawCoder;
.super Ljava/lang/Object;
.source "RawCoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate([Lorg/tukaani/xz/FilterCoder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 10
    :goto_2
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    const-string v3, "Unsupported XZ filter chain"

    if-ge v1, v2, :cond_1a

    .line 11
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/tukaani/xz/FilterCoder;->nonLastOK()Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_14
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {p0, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1a
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-interface {v1}, Lorg/tukaani/xz/FilterCoder;->lastOK()Z

    move-result v1

    if-eqz v1, :cond_40

    move v1, v0

    .line 20
    :goto_26
    array-length v2, p0

    if-ge v0, v2, :cond_36

    .line 21
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/tukaani/xz/FilterCoder;->changesSize()Z

    move-result v2

    if-eqz v2, :cond_33

    add-int/lit8 v1, v1, 0x1

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_36
    const/4 p0, 0x3

    if-gt v1, p0, :cond_3a

    return-void

    .line 25
    :cond_3a
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {p0, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_40
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {p0, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
