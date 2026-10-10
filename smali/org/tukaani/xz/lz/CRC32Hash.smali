###### Class org.tukaani.xz.lz.CRC32Hash (org.tukaani.xz.lz.CRC32Hash)
.class Lorg/tukaani/xz/lz/CRC32Hash;
.super Ljava/lang/Object;
.source "CRC32Hash.java"


# static fields
.field private static final CRC32_POLY:I = -0x12477ce0

.field static final crcTable:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x100

    .line 14
    new-array v1, v0, [I

    sput-object v1, Lorg/tukaani/xz/lz/CRC32Hash;->crcTable:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_27

    move v3, v1

    move v4, v2

    :goto_c
    const/16 v5, 0x8

    if-ge v3, v5, :cond_20

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1b

    ushr-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_1d

    :cond_1b
    ushr-int/lit8 v4, v4, 0x1

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 27
    :cond_20
    sget-object v3, Lorg/tukaani/xz/lz/CRC32Hash;->crcTable:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
