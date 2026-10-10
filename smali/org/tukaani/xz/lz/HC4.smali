###### Class org.tukaani.xz.lz.HC4 (org.tukaani.xz.lz.HC4)
.class final Lorg/tukaani/xz/lz/HC4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "HC4.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final chain:[I

.field private cyclicPos:I

.field private final cyclicSize:I

.field private final depthLimit:I

.field private final hash:Lorg/tukaani/xz/lz/Hash234;

.field private lzPos:I

.field private final matches:Lorg/tukaani/xz/lz/Matches;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(IIIIIILorg/tukaani/xz/ArrayCache;)V
    .registers 15

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .line 35
    invoke-direct/range {v0 .. v6}, Lorg/tukaani/xz/lz/LZEncoder;-><init>(IIIIILorg/tukaani/xz/ArrayCache;)V

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    .line 38
    new-instance p2, Lorg/tukaani/xz/lz/Hash234;

    invoke-direct {p2, p1, p7}, Lorg/tukaani/xz/lz/Hash234;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object p2, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    add-int/lit8 p1, p1, 0x1

    .line 41
    iput p1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p7, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p2

    iput-object p2, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    .line 43
    iput p1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    .line 48
    new-instance p1, Lorg/tukaani/xz/lz/Matches;

    add-int/lit8 p2, p4, -0x1

    invoke-direct {p1, p2}, Lorg/tukaani/xz/lz/Matches;-><init>(I)V

    iput-object p1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    if-lez p6, :cond_2d

    goto :goto_31

    .line 53
    :cond_2d
    div-int/lit8 p4, p4, 0x4

    add-int/lit8 p6, p4, 0x4

    :goto_31
    iput p6, p0, Lorg/tukaani/xz/lz/HC4;->depthLimit:I

    return-void
.end method

.method public static getMemoryUsage(I)I
    .registers 2

    .line 25
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getMemoryUsage(I)I

    move-result v0

    div-int/lit16 p0, p0, 0x100

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private movePos()I
    .registers 5

    const/4 v0, 0x4

    .line 70
    invoke-virtual {p0, v0, v0}, Lorg/tukaani/xz/lz/LZEncoder;->movePos(II)I

    move-result v0

    if-eqz v0, :cond_33

    .line 73
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_26

    .line 74
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    sub-int/2addr v2, v1

    .line 75
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/Hash234;->normalize(I)V

    .line 76
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    invoke-static {v1, v3, v2}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 77
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    .line 80
    :cond_26
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-ne v1, v2, :cond_33

    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    :cond_33
    return v0
.end method


# virtual methods
.method public getMatches()Lorg/tukaani/xz/lz/Matches;
    .registers 14

    .line 89
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    const/4 v1, 0x0

    iput v1, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 90
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    .line 91
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 92
    invoke-direct {p0}, Lorg/tukaani/xz/lz/HC4;->movePos()I

    move-result v3

    if-ge v3, v0, :cond_18

    if-nez v3, :cond_14

    .line 96
    iget-object p0, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object p0

    :cond_14
    move v0, v3

    if-le v2, v3, :cond_18

    move v2, v0

    .line 103
    :cond_18
    iget-object v3, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v4, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v5, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {v3, v4, v5}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 104
    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    iget-object v4, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v4}, Lorg/tukaani/xz/lz/Hash234;->getHash2Pos()I

    move-result v4

    sub-int/2addr v3, v4

    .line 105
    iget v4, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    iget-object v5, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/Hash234;->getHash3Pos()I

    move-result v5

    sub-int/2addr v4, v5

    .line 106
    iget-object v5, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v5

    .line 107
    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v7, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    invoke-virtual {v6, v7}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 109
    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v7, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    aput v5, v6, v7

    .line 117
    iget v6, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    const/4 v7, 0x1

    if-ge v3, v6, :cond_67

    iget-object v8, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int v10, v9, v3

    aget-byte v10, v8, v10

    aget-byte v8, v8, v9

    if-ne v10, v8, :cond_67

    .line 119
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    const/4 v10, 0x2

    aput v10, v9, v1

    .line 120
    iget-object v9, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v11, v3, -0x1

    aput v11, v9, v1

    .line 121
    iput v7, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    goto :goto_68

    :cond_67
    move v10, v1

    :goto_68
    const/4 v8, 0x3

    if-eq v3, v4, :cond_89

    if-ge v4, v6, :cond_89

    .line 128
    iget-object v6, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int v11, v9, v4

    aget-byte v11, v6, v11

    aget-byte v6, v6, v9

    if-ne v11, v6, :cond_89

    .line 131
    iget-object v3, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v6, v3, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget v9, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v3, v4, -0x1

    aput v3, v6, v9

    move v3, v4

    move v10, v8

    .line 136
    :cond_89
    iget-object v4, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v4, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v4, :cond_a3

    .line 137
    iget-object v4, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v6, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-static {v4, v6, v3, v10, v0}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v10

    .line 139
    iget-object v3, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v4, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget v6, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v6, v7

    aput v10, v4, v6

    if-lt v10, v2, :cond_a3

    return-object v3

    :cond_a3
    if-ge v10, v8, :cond_a6

    goto :goto_a7

    :cond_a6
    move v8, v10

    .line 152
    :goto_a7
    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->depthLimit:I

    .line 155
    :goto_a9
    iget v4, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_f8

    .line 160
    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-lt v4, v3, :cond_b5

    goto :goto_f8

    .line 163
    :cond_b5
    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v9, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    sub-int v10, v9, v4

    if-le v4, v9, :cond_be

    goto :goto_bf

    :cond_be
    move v3, v1

    :goto_bf
    add-int/2addr v10, v3

    .line 164
    aget v3, v6, v10

    .line 169
    iget-object v6, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v10, v9, v8

    sub-int/2addr v10, v4

    aget-byte v10, v6, v10

    add-int v11, v9, v8

    aget-byte v11, v6, v11

    if-ne v10, v11, :cond_f4

    sub-int v10, v9, v4

    aget-byte v10, v6, v10

    aget-byte v11, v6, v9

    if-ne v10, v11, :cond_f4

    .line 172
    invoke-static {v6, v9, v4, v7, v0}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v6

    if-le v6, v8, :cond_f4

    .line 179
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget v10, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v6, v9, v10

    .line 180
    iget-object v9, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v4, v4, -0x1

    aput v4, v9, v10

    add-int/2addr v10, v7

    .line 181
    iput v10, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lt v6, v2, :cond_f3

    return-object v8

    :cond_f3
    move v8, v6

    :cond_f4
    move v12, v5

    move v5, v3

    move v3, v12

    goto :goto_a9

    .line 161
    :cond_f8
    :goto_f8
    iget-object p0, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object p0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 59
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/Hash234;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 60
    invoke-super {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public skip(I)V
    .registers 5

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_28

    .line 197
    invoke-direct {p0}, Lorg/tukaani/xz/lz/HC4;->movePos()I

    move-result p1

    if-eqz p1, :cond_26

    .line 199
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {p1, v1, v2}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 200
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    iget-object v2, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v2

    aput v2, p1, v1

    .line 201
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    invoke-virtual {p1, v1}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    :cond_26
    move p1, v0

    goto :goto_0

    :cond_28
    return-void
.end method
