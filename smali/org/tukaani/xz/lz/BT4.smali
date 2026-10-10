###### Class org.tukaani.xz.lz.BT4 (org.tukaani.xz.lz.BT4)
.class final Lorg/tukaani/xz/lz/BT4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "BT4.java"


# instance fields
.field private cyclicPos:I

.field private final cyclicSize:I

.field private final depthLimit:I

.field private final hash:Lorg/tukaani/xz/lz/Hash234;

.field private lzPos:I

.field private final matches:Lorg/tukaani/xz/lz/Matches;

.field private final tree:[I


# direct methods
.method public constructor <init>(IIIIIILorg/tukaani/xz/ArrayCache;)V
    .registers 15

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .line 28
    invoke-direct/range {v0 .. v6}, Lorg/tukaani/xz/lz/LZEncoder;-><init>(IIIIILorg/tukaani/xz/ArrayCache;)V

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    add-int/lit8 p2, p1, 0x1

    .line 31
    iput p2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    .line 32
    iput p2, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 34
    new-instance p3, Lorg/tukaani/xz/lz/Hash234;

    invoke-direct {p3, p1, p7}, Lorg/tukaani/xz/lz/Hash234;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object p3, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    mul-int/lit8 p2, p2, 0x2

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p7, p2, p1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p1

    iput-object p1, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    .line 40
    new-instance p1, Lorg/tukaani/xz/lz/Matches;

    add-int/lit8 p2, p4, -0x1

    invoke-direct {p1, p2}, Lorg/tukaani/xz/lz/Matches;-><init>(I)V

    iput-object p1, p0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    if-lez p6, :cond_2f

    goto :goto_33

    .line 42
    :cond_2f
    div-int/lit8 p4, p4, 0x2

    add-int/lit8 p6, p4, 0x10

    :goto_33
    iput p6, p0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    return-void
.end method

.method public static getMemoryUsage(I)I
    .registers 2

    .line 22
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getMemoryUsage(I)I

    move-result v0

    div-int/lit16 p0, p0, 0x80

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private movePos()I
    .registers 5

    .line 53
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->movePos(II)I

    move-result v0

    if-eqz v0, :cond_37

    .line 56
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2a

    .line 57
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    sub-int/2addr v2, v1

    .line 58
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/Hash234;->normalize(I)V

    .line 59
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget v3, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3, v2}, Lorg/tukaani/xz/lz/LZEncoder;->normalize([III)V

    .line 60
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 63
    :cond_2a
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-ne v1, v2, :cond_37

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    :cond_37
    return v0
.end method

.method private skip(II)V
    .registers 16

    .line 193
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 195
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 201
    :goto_d
    iget v6, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v6, p2

    add-int/lit8 v7, v0, -0x1

    if-eqz v0, :cond_73

    .line 203
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v6, v0, :cond_19

    goto :goto_73

    .line 209
    :cond_19
    iget v8, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int v9, v8, v6

    if-le v6, v8, :cond_20

    goto :goto_21

    :cond_20
    move v0, v3

    :goto_21
    add-int/2addr v9, v0

    shl-int/lit8 v0, v9, 0x1

    .line 211
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 213
    iget-object v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v11, v10, v8

    sub-int/2addr v11, v6

    aget-byte v11, v9, v11

    add-int v12, v10, v8

    aget-byte v12, v9, v12

    if-ne v11, v12, :cond_4c

    add-int/lit8 v8, v8, 0x1

    .line 217
    invoke-static {v9, v10, v6, v8, p1}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v8

    if-ne v8, p1, :cond_4c

    .line 220
    iget-object p0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget p1, p0, v0

    aput p1, p0, v1

    add-int/lit8 v0, v0, 0x1

    .line 221
    aget p1, p0, v0

    aput p1, p0, v2

    return-void

    .line 226
    :cond_4c
    iget-object v9, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v11, v10, v8

    sub-int/2addr v11, v6

    aget-byte v6, v9, v11

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v10, v8

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    if-ge v6, v9, :cond_69

    .line 228
    iget-object v5, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput p2, v5, v1

    add-int/lit8 v0, v0, 0x1

    .line 230
    aget p2, v5, v0

    move v1, v0

    move v5, v8

    goto :goto_71

    .line 233
    :cond_69
    iget-object v4, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput p2, v4, v2

    .line 235
    aget p2, v4, v0

    move v2, v0

    move v4, v8

    :goto_71
    move v0, v7

    goto :goto_d

    .line 204
    :cond_73
    :goto_73
    iget-object p0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v3, p0, v2

    .line 205
    aput v3, p0, v1

    return-void
.end method


# virtual methods
.method public getMatches()Lorg/tukaani/xz/lz/Matches;
    .registers 19

    move-object/from16 v0, p0

    .line 72
    iget-object v1, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    const/4 v2, 0x0

    iput v2, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 74
    iget v1, v0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    .line 75
    iget v3, v0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 76
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v4

    if-ge v4, v1, :cond_1a

    if-nez v4, :cond_16

    .line 80
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0

    :cond_16
    move v1, v4

    if-le v3, v4, :cond_1a

    move v3, v1

    .line 87
    :cond_1a
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v5, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v6, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {v4, v5, v6}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 88
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/Hash234;->getHash2Pos()I

    move-result v5

    sub-int/2addr v4, v5

    .line 89
    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v6, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash3Pos()I

    move-result v6

    sub-int/2addr v5, v6

    .line 90
    iget-object v6, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v6

    .line 91
    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v8, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v7, v8}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 99
    iget v7, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    const/4 v8, 0x1

    if-ge v4, v7, :cond_63

    iget-object v9, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int v11, v10, v4

    aget-byte v11, v9, v11

    aget-byte v9, v9, v10

    if-ne v11, v9, :cond_63

    .line 101
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v10, v9, Lorg/tukaani/xz/lz/Matches;->len:[I

    const/4 v11, 0x2

    aput v11, v10, v2

    .line 102
    iget-object v10, v9, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v12, v4, -0x1

    aput v12, v10, v2

    .line 103
    iput v8, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    goto :goto_64

    :cond_63
    move v11, v2

    :goto_64
    const/4 v9, 0x3

    if-eq v4, v5, :cond_85

    if-ge v5, v7, :cond_85

    .line 110
    iget-object v7, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int v12, v10, v5

    aget-byte v12, v7, v12

    aget-byte v7, v7, v10

    if-ne v12, v7, :cond_85

    .line 113
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v4, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget v10, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v4, v5, -0x1

    aput v4, v7, v10

    move v4, v5

    move v11, v9

    .line 118
    :cond_85
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v5, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v5, :cond_a4

    .line 119
    iget-object v5, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v7, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-static {v5, v7, v4, v11, v1}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v11

    .line 121
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v5, v4, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget v4, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v4, v8

    aput v11, v5, v4

    if-lt v11, v3, :cond_a4

    .line 126
    invoke-direct {v0, v3, v6}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    .line 127
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0

    :cond_a4
    if-ge v11, v9, :cond_a7

    goto :goto_a8

    :cond_a7
    move v9, v11

    .line 136
    :goto_a8
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 138
    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v8

    shl-int/2addr v5, v8

    move v10, v2

    move v11, v10

    .line 144
    :goto_b2
    iget v12, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v12, v6

    add-int/lit8 v13, v4, -0x1

    if-eqz v4, :cond_138

    .line 149
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v12, v4, :cond_bf

    goto/16 :goto_138

    .line 155
    :cond_bf
    iget v14, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int v15, v14, v12

    if-le v12, v14, :cond_c6

    goto :goto_c7

    :cond_c6
    move v4, v2

    :goto_c7
    add-int/2addr v15, v4

    shl-int/lit8 v4, v15, 0x1

    .line 157
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 159
    iget-object v15, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v2, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v16, v2, v14

    sub-int v16, v16, v12

    aget-byte v8, v15, v16

    add-int v16, v2, v14

    move/from16 v17, v10

    aget-byte v10, v15, v16

    if-ne v8, v10, :cond_10a

    add-int/lit8 v14, v14, 0x1

    .line 160
    invoke-static {v15, v2, v12, v14, v1}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v14

    if-le v14, v9, :cond_10a

    .line 165
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v2, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget v9, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v14, v8, v9

    .line 166
    iget-object v8, v2, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v10, v12, -0x1

    aput v10, v8, v9

    const/4 v8, 0x1

    add-int/2addr v9, v8

    .line 167
    iput v9, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lt v14, v3, :cond_108

    .line 170
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v1, v0, v4

    aput v1, v0, v5

    add-int/2addr v4, v8

    .line 171
    aget v1, v0, v4

    aput v1, v0, v7

    return-object v2

    :cond_108
    move v9, v14

    goto :goto_10b

    :cond_10a
    const/4 v8, 0x1

    .line 177
    :goto_10b
    iget-object v2, v0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v10, v0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int v15, v10, v14

    sub-int/2addr v15, v12

    aget-byte v12, v2, v15

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v10, v14

    aget-byte v2, v2, v10

    and-int/lit16 v2, v2, 0xff

    if-ge v12, v2, :cond_12b

    .line 179
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    .line 181
    aget v2, v2, v4

    move v6, v2

    move v5, v4

    move v11, v14

    move/from16 v10, v17

    goto :goto_134

    .line 184
    :cond_12b
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v6, v2, v7

    .line 186
    aget v2, v2, v4

    move v6, v2

    move v7, v4

    move v10, v14

    :goto_134
    move v4, v13

    const/4 v2, 0x0

    goto/16 :goto_b2

    .line 150
    :cond_138
    :goto_138
    iget-object v1, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    const/4 v2, 0x0

    aput v2, v1, v7

    .line 151
    aput v2, v1, v5

    .line 152
    iget-object v0, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .registers 3

    .line 47
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 48
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/Hash234;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 49
    invoke-super {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public skip(I)V
    .registers 6

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_2b

    .line 244
    iget p1, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 245
    invoke-direct {p0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v1

    if-ge v1, p1, :cond_10

    if-nez v1, :cond_f

    goto :goto_29

    :cond_f
    move p1, v1

    .line 254
    :cond_10
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v3, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    invoke-virtual {v1, v2, v3}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 255
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v1

    .line 256
    iget-object v2, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v3, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 258
    invoke-direct {p0, p1, v1}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    :goto_29
    move p1, v0

    goto :goto_0

    :cond_2b
    return-void
.end method
