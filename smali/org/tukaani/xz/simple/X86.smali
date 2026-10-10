###### Class org.tukaani.xz.simple.X86 (org.tukaani.xz.simple.X86)
.class public final Lorg/tukaani/xz/simple/X86;
.super Ljava/lang/Object;
.source "X86.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field private static final MASK_TO_ALLOWED_STATUS:[Z

.field private static final MASK_TO_BIT_NUMBER:[I


# instance fields
.field private final isEncoder:Z

.field private pos:I

.field private prevMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 12
    new-array v1, v0, [Z

    fill-array-data v1, :array_12

    sput-object v1, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    .line 15
    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    return-void

    nop

    :array_12
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(ZI)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 27
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    add-int/lit8 p2, p2, 0x5

    .line 28
    iput p2, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    return-void
.end method

.method private static test86MSByte(B)Z
    .registers 2

    .line 0
    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-eqz p0, :cond_a

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method


# virtual methods
.method public code([BII)I
    .registers 12

    add-int/lit8 v0, p2, -0x1

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x5

    move v1, p2

    :goto_6
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, p3, :cond_96

    .line 38
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xfe

    const/16 v5, 0xe8

    if-eq v4, v5, :cond_14

    goto/16 :goto_93

    :cond_14
    sub-int v0, v1, v0

    and-int/lit8 v4, v0, -0x4

    if-eqz v4, :cond_1d

    .line 43
    iput v2, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    goto :goto_45

    .line 45
    :cond_1d
    iget v2, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    add-int/lit8 v0, v0, -0x1

    shl-int v0, v2, v0

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-eqz v0, :cond_45

    .line 47
    sget-object v2, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3e

    add-int/lit8 v2, v1, 0x4

    sget-object v4, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    aget v0, v4, v0

    sub-int/2addr v2, v0

    aget-byte v0, p1, v2

    invoke-static {v0}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 50
    :cond_3e
    iget v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/2addr v0, v3

    or-int/2addr v0, v3

    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    goto :goto_92

    :cond_45
    :goto_45
    add-int/lit8 v0, v1, 0x4

    .line 58
    aget-byte v2, p1, v0

    invoke-static {v2}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v2

    if-eqz v2, :cond_8c

    add-int/lit8 v2, v1, 0x1

    .line 59
    invoke-static {p1, v2}, Lorg/tukaani/xz/common/ByteArrayView;->getIntLE([BI)I

    move-result v4

    .line 62
    :goto_55
    iget-boolean v5, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    if-eqz v5, :cond_5f

    .line 63
    iget v5, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v5, v1

    sub-int/2addr v5, p2

    add-int/2addr v4, v5

    goto :goto_64

    .line 65
    :cond_5f
    iget v5, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v5, v1

    sub-int/2addr v5, p2

    sub-int/2addr v4, v5

    .line 67
    :goto_64
    iget v5, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-nez v5, :cond_69

    goto :goto_7a

    .line 70
    :cond_69
    sget-object v6, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    aget v5, v6, v5

    mul-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v6, v5, 0x18

    ushr-int v6, v4, v6

    int-to-byte v6, v6

    .line 71
    invoke-static {v6}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v6

    if-nez v6, :cond_85

    :goto_7a
    shl-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x7

    .line 81
    invoke-static {p1, v2, v4}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_93

    :cond_85
    rsub-int/lit8 v5, v5, 0x20

    shl-int v5, v3, v5

    sub-int/2addr v5, v3

    xor-int/2addr v4, v5

    goto :goto_55

    .line 84
    :cond_8c
    iget v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/2addr v0, v3

    or-int/2addr v0, v3

    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    :goto_92
    move v0, v1

    :goto_93
    add-int/2addr v1, v3

    goto/16 :goto_6

    :cond_96
    sub-int p1, v1, v0

    and-int/lit8 p3, p1, -0x4

    if-eqz p3, :cond_9d

    goto :goto_a2

    .line 89
    :cond_9d
    iget p3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    sub-int/2addr p1, v3

    shl-int v2, p3, p1

    :goto_a2
    iput v2, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    sub-int/2addr v1, p2

    .line 92
    iget p1, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    return v1
.end method
