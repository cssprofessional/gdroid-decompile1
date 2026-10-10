###### Class in.dragonbra.javasteam.util.Adler32 (in.dragonbra.javasteam.util.Adler32)
.class public final Lin/dragonbra/javasteam/util/Adler32;
.super Ljava/lang/Object;
.source "Adler32.kt"


# static fields
.field private static final BASE:I = 0xfff1

.field public static final INSTANCE:Lin/dragonbra/javasteam/util/Adler32;

.field private static final NMAX:I = 0x15b0


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/util/Adler32;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/Adler32;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/Adler32;->INSTANCE:Lin/dragonbra/javasteam/util/Adler32;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final calculate(I[B)I
    .registers 14

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xffff

    and-int v1, p0, v0

    int-to-long v1, v1

    const/16 v3, 0x10

    ushr-int/2addr p0, v3

    and-int/2addr p0, v0

    int-to-long v4, p0

    .line 34
    array-length p0, p1

    const/4 v0, 0x0

    move v6, v0

    :goto_13
    if-ge v6, p0, :cond_cd

    sub-int v7, p0, v6

    const/16 v8, 0x15b0

    .line 37
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v8, v6, v7

    :goto_1f
    if-lt v7, v3, :cond_b5

    .line 43
    aget-byte v9, p1, v6

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0x1

    .line 45
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0x2

    .line 47
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0x3

    .line 49
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0x4

    .line 51
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0x5

    .line 53
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0x6

    .line 55
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0x7

    .line 57
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0x8

    .line 59
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0x9

    .line 61
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0xa

    .line 63
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0xb

    .line 65
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0xc

    .line 67
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0xd

    .line 69
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0xe

    .line 71
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v9, v6, 0xf

    .line 73
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long/2addr v1, v9

    add-long/2addr v4, v1

    add-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v7, -0x10

    goto/16 :goto_1f

    :cond_b5
    move v9, v0

    :goto_b6
    if-ge v9, v7, :cond_c4

    add-int v10, v6, v9

    .line 81
    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    add-long/2addr v1, v10

    add-long/2addr v4, v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b6

    :cond_c4
    const v6, 0xfff1

    int-to-long v6, v6

    .line 87
    rem-long/2addr v1, v6

    .line 88
    rem-long/2addr v4, v6

    move v6, v8

    goto/16 :goto_13

    :cond_cd
    shl-long p0, v4, v3

    or-long/2addr p0, v1

    long-to-int p0, p0

    return p0
.end method

.method public static final calculate([B)I
    .registers 2

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-static {v0, p0}, Lin/dragonbra/javasteam/util/Adler32;->calculate(I[B)I

    move-result p0

    return p0
.end method
