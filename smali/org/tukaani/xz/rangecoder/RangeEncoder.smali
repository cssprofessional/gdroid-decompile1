###### Class org.tukaani.xz.rangecoder.RangeEncoder (org.tukaani.xz.rangecoder.RangeEncoder)
.class public abstract Lorg/tukaani/xz/rangecoder/RangeEncoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;
.source "RangeEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BIT_PRICE_SHIFT_BITS:I = 0x4

.field private static final MOVE_REDUCING_BITS:I = 0x4

.field private static final prices:[I


# instance fields
.field private cache:B

.field cacheSize:J

.field private low:J

.field private range:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x80

    .line 14
    new-array v0, v0, [I

    sput-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    const/16 v0, 0x8

    :goto_8
    const/16 v1, 0x800

    if-ge v0, v1, :cond_2d

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_f
    const/4 v4, 0x4

    if-ge v1, v4, :cond_22

    mul-int/2addr v3, v3

    shl-int/lit8 v2, v2, 0x1

    :goto_15
    const/high16 v4, -0x10000

    and-int/2addr v4, v3

    if-eqz v4, :cond_1f

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 43
    :cond_22
    sget-object v1, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    shr-int/lit8 v3, v0, 0x4

    rsub-int v2, v2, 0xa1

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x10

    goto :goto_8

    :cond_2d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;-><init>()V

    return-void
.end method

.method public static getBitPrice(II)I
    .registers 3

    .line 119
    sget-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    neg-int p1, p1

    and-int/lit16 p1, p1, 0x7ff

    xor-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x4

    aget p0, v0, p0

    return p0
.end method

.method public static getBitTreePrice([SI)I
    .registers 6

    .line 141
    array-length v0, p0

    or-int/2addr p1, v0

    const/4 v0, 0x0

    :cond_3
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    ushr-int/2addr p1, v2

    .line 146
    aget-short v3, p0, p1

    invoke-static {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v2, :cond_3

    return v0
.end method

.method public static getDirectBitsPrice(I)I
    .registers 1

    .line 0
    shl-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static getReverseBitTreePrice([SI)I
    .registers 7

    .line 168
    array-length v0, p0

    or-int/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :cond_5
    and-int/lit8 v3, p1, 0x1

    ushr-int/2addr p1, v1

    .line 173
    aget-short v4, p0, v2

    invoke-static {v4, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v4

    add-int/2addr v0, v4

    shl-int/2addr v2, v1

    or-int/2addr v2, v3

    if-ne p1, v1, :cond_5

    return v0
.end method

.method private shiftLow()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_14

    const-wide v5, 0xff000000L

    cmp-long v0, v0, v5

    if-gez v0, :cond_2e

    .line 80
    :cond_14
    iget-byte v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    :goto_16
    add-int/2addr v0, v2

    .line 83
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->writeByte(I)V

    .line 85
    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_3f

    .line 87
    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    .line 90
    :cond_2e
    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    .line 91
    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    return-void

    :cond_3f
    const/16 v0, 0xff

    goto :goto_16
.end method


# virtual methods
.method public encodeBit([SII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    aget-short v0, p1, p2

    .line 97
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 v2, v1, 0xb

    mul-int/2addr v2, v0

    if-nez p3, :cond_14

    .line 101
    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    rsub-int p3, v0, 0x800

    ushr-int/lit8 p3, p3, 0x5

    add-int/2addr v0, p3

    int-to-short p3, v0

    .line 102
    aput-short p3, p1, p2

    goto :goto_29

    .line 105
    :cond_14
    iget-wide v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    sub-int/2addr v1, v2

    .line 106
    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 p3, v0, 0x5

    sub-int/2addr v0, p3

    int-to-short p3, v0

    .line 107
    aput-short p3, p1, p2

    .line 110
    :goto_29
    iget p1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    const/high16 p2, -0x1000000

    and-int/2addr p2, p1

    if-nez p2, :cond_37

    shl-int/lit8 p1, p1, 0x8

    .line 111
    iput p1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 112
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    :cond_37
    return-void
.end method

.method public encodeBitTree([SI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    array-length v0, p1

    const/4 v1, 0x1

    move v2, v1

    :cond_3
    ushr-int/2addr v0, v1

    and-int v3, p2, v0

    .line 130
    invoke-virtual {p0, p1, v2, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    shl-int/2addr v2, v1

    if-eqz v3, :cond_e

    or-int/lit8 v2, v2, 0x1

    :cond_e
    if-ne v0, v1, :cond_3

    return-void
.end method

.method public encodeDirectBits(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 183
    iget-wide v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    add-int/lit8 p2, p2, -0x1

    ushr-int v3, p1, p2

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x0

    and-int/2addr v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    if-nez v1, :cond_21

    shl-int/lit8 v0, v0, 0x8

    .line 186
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 187
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    :cond_21
    if-nez p2, :cond_0

    return-void
.end method

.method public encodeReverseBitTree([SI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    array-length v0, p1

    or-int/2addr p2, v0

    const/4 v0, 0x1

    move v1, v0

    :cond_4
    and-int/lit8 v2, p2, 0x1

    ushr-int/2addr p2, v0

    .line 160
    invoke-virtual {p0, p1, v1, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    shl-int/2addr v1, v0

    or-int/2addr v1, v2

    if-ne p2, v0, :cond_4

    return-void
.end method

.method public finish()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_a

    .line 65
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    const/4 p0, -0x1

    return p0
.end method

.method public getPendingSize()I
    .registers 1

    .line 60
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    const/4 v0, 0x0

    .line 52
    iput-byte v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    const-wide/16 v0, 0x1

    .line 53
    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    return-void
.end method

.method public abstract writeByte(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
