###### Class com.gmodvr.flat.VtfPreview (com.gmodvr.flat.VtfPreview)
.class final Lcom/gmodvr/flat/VtfPreview;
.super Ljava/lang/Object;
.source "VtfPreview.java"


# instance fields
.field final height:I

.field final pixels:[I

.field final width:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/gmodvr/flat/VtfPreview;->width:I

    iput p2, p0, Lcom/gmodvr/flat/VtfPreview;->height:I

    mul-int/2addr p1, p2

    .line 14
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/gmodvr/flat/VtfPreview;->pixels:[I

    return-void
.end method

.method public static decode([B)Lcom/gmodvr/flat/VtfPreview;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 18
    array-length v1, v0

    const/16 v2, 0x40

    if-lt v1, v2, :cond_2c9

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/16 v4, 0x56

    if-ne v3, v4, :cond_2c9

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    const/16 v5, 0x54

    if-ne v4, v5, :cond_2c9

    const/4 v4, 0x2

    aget-byte v5, v0, v4

    const/16 v6, 0x46

    if-ne v5, v6, :cond_2c9

    const/4 v5, 0x3

    aget-byte v6, v0, v5

    if-nez v6, :cond_2c9

    .line 20
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v7, 0x4

    .line 21
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    const/16 v11, 0xc

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    const/16 v13, 0x10

    .line 22
    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v14

    const v15, 0xffff

    and-int/2addr v14, v15

    const/16 v13, 0x12

    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    and-int/2addr v13, v15

    const/16 v4, 0x18

    .line 23
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v17

    and-int v4, v17, v15

    const/16 v15, 0x34

    invoke-virtual {v6, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v15

    const/16 v19, 0x38

    aget-byte v7, v0, v19

    const/16 v1, 0xff

    and-int/2addr v7, v1

    const/4 v11, 0x7

    if-ne v8, v11, :cond_2c1

    if-lt v10, v3, :cond_2c1

    const/4 v8, 0x5

    if-gt v10, v8, :cond_2c1

    if-lt v12, v2, :cond_2c1

    .line 24
    array-length v2, v0

    if-gt v12, v2, :cond_2c1

    if-lt v14, v3, :cond_2c1

    if-lt v13, v3, :cond_2c1

    const/16 v2, 0x400

    if-gt v14, v2, :cond_2c1

    if-gt v13, v2, :cond_2c1

    if-ne v4, v3, :cond_2c1

    if-lt v7, v3, :cond_2c1

    const/16 v2, 0xb

    if-gt v7, v2, :cond_2c1

    if-lt v10, v5, :cond_bf

    const/16 v2, 0x50

    if-lt v12, v2, :cond_bf

    const/16 v2, 0x44

    .line 30
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-ltz v2, :cond_b7

    add-int/lit8 v4, v12, -0x50

    .line 31
    div-int/2addr v4, v9

    if-gt v2, v4, :cond_b7

    move/from16 v22, v12

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_98
    if-ge v4, v2, :cond_c2

    mul-int/lit8 v23, v4, 0x8

    add-int/lit8 v5, v23, 0x50

    .line 34
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    const v24, 0xffffff

    and-int v5, v5, v24

    const/16 v8, 0x30

    if-ne v5, v8, :cond_b2

    add-int/lit8 v5, v23, 0x54

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v22

    move v10, v3

    :cond_b2
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x3

    const/4 v8, 0x5

    goto :goto_98

    .line 31
    :cond_b7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid VTF resources."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    move/from16 v22, v12

    const/4 v10, 0x0

    :cond_c2
    if-nez v10, :cond_de

    const/16 v2, 0x3d

    .line 38
    aget-byte v2, v0, v2

    and-int/2addr v2, v1

    const/16 v4, 0x3e

    aget-byte v4, v0, v4

    and-int/2addr v4, v1

    if-lez v2, :cond_de

    if-lez v4, :cond_de

    const/16 v5, 0x39

    .line 39
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/gmodvr/flat/VtfPreview;->imageBytes(III)I

    move-result v2

    add-int v22, v22, v2

    :cond_de
    sub-int/2addr v7, v3

    move/from16 v2, v22

    :goto_e1
    if-lez v7, :cond_f7

    shr-int v4, v14, v7

    .line 42
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    shr-int v5, v13, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5, v15}, Lcom/gmodvr/flat/VtfPreview;->imageBytes(III)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v7, v7, -0x1

    goto :goto_e1

    .line 43
    :cond_f7
    invoke-static {v14, v13, v15}, Lcom/gmodvr/flat/VtfPreview;->imageBytes(III)I

    move-result v4

    if-lt v2, v12, :cond_2b9

    .line 44
    array-length v5, v0

    sub-int/2addr v5, v4

    if-gt v2, v5, :cond_2b9

    .line 45
    new-instance v4, Lcom/gmodvr/flat/VtfPreview;

    invoke-direct {v4, v14, v13}, Lcom/gmodvr/flat/VtfPreview;-><init>(II)V

    if-eqz v15, :cond_10c

    const/16 v5, 0xc

    if-ne v15, v5, :cond_111

    :cond_10c
    move-object v1, v4

    const/16 v19, 0x0

    goto/16 :goto_27d

    :cond_111
    const/4 v5, 0x0

    :goto_112
    if-ge v5, v13, :cond_27b

    const/4 v7, 0x0

    :goto_115
    if-ge v7, v14, :cond_26a

    .line 57
    new-array v8, v9, [I

    const/16 v10, 0xf

    const-wide/16 v21, 0x0

    if-ne v15, v10, :cond_18d

    .line 59
    aget-byte v12, v0, v2

    and-int/2addr v12, v1

    const/16 v19, 0x0

    aput v12, v8, v19

    add-int/lit8 v12, v2, 0x1

    aget-byte v12, v0, v12

    and-int/2addr v12, v1

    aput v12, v8, v3

    const/4 v12, 0x0

    :goto_12e
    const/4 v9, 0x6

    if-ge v12, v9, :cond_146

    add-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v12

    .line 60
    aget-byte v9, v0, v9

    and-int/2addr v9, v1

    move/from16 v25, v2

    int-to-long v1, v9

    mul-int/lit8 v9, v12, 0x8

    shl-long/2addr v1, v9

    or-long v21, v21, v1

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v25

    const/16 v1, 0xff

    goto :goto_12e

    :cond_146
    move/from16 v25, v2

    const/4 v1, 0x0

    .line 61
    aget v2, v8, v1

    aget v12, v8, v3

    if-le v2, v12, :cond_168

    move v2, v3

    :goto_150
    if-gt v2, v9, :cond_166

    add-int/lit8 v12, v2, 0x1

    rsub-int/lit8 v26, v2, 0x7

    .line 62
    aget v27, v8, v1

    mul-int v26, v26, v27

    aget v1, v8, v3

    mul-int/2addr v2, v1

    add-int v26, v26, v2

    div-int/lit8 v26, v26, 0x7

    aput v26, v8, v12

    move v2, v12

    const/4 v1, 0x0

    goto :goto_150

    :cond_166
    const/4 v2, 0x5

    goto :goto_18a

    :cond_168
    move v2, v3

    :goto_169
    const/4 v1, 0x4

    if-gt v2, v1, :cond_181

    add-int/lit8 v1, v2, 0x1

    rsub-int/lit8 v12, v2, 0x5

    const/16 v19, 0x0

    .line 64
    aget v26, v8, v19

    mul-int v12, v12, v26

    aget v26, v8, v3

    mul-int v2, v2, v26

    add-int/2addr v12, v2

    const/4 v2, 0x5

    div-int/2addr v12, v2

    aput v12, v8, v1

    move v2, v1

    goto :goto_169

    :cond_181
    const/4 v2, 0x5

    const/16 v19, 0x0

    .line 65
    aput v19, v8, v9

    const/16 v1, 0xff

    aput v1, v8, v11

    :goto_18a
    add-int/lit8 v1, v25, 0x8

    goto :goto_192

    :cond_18d
    move/from16 v25, v2

    const/4 v2, 0x5

    move/from16 v1, v25

    .line 69
    :goto_192
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    const v12, 0xffff

    and-int/2addr v9, v12

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    and-int/2addr v2, v12

    const/4 v12, 0x4

    .line 70
    new-array v11, v12, [I

    invoke-static {v9}, Lcom/gmodvr/flat/VtfPreview;->rgb565(I)I

    move-result v12

    const/16 v19, 0x0

    aput v12, v11, v19

    invoke-static {v2}, Lcom/gmodvr/flat/VtfPreview;->rgb565(I)I

    move-result v12

    aput v12, v11, v3

    const/4 v3, 0x2

    aput v19, v11, v3

    const/4 v3, 0x3

    aput v19, v11, v3

    if-gt v9, v2, :cond_1bc

    if-ne v15, v10, :cond_1bf

    :cond_1bc
    const/4 v0, 0x2

    const/4 v3, 0x1

    goto :goto_1cc

    .line 75
    :cond_1bf
    aget v10, v11, v19

    const/4 v0, 0x2

    const/4 v3, 0x1

    invoke-static {v10, v12, v3, v3, v0}, Lcom/gmodvr/flat/VtfPreview;->mix(IIIII)I

    move-result v10

    aput v10, v11, v0

    move-object/from16 v16, v4

    goto :goto_1e1

    .line 72
    :goto_1cc
    aget v10, v11, v19

    move-object/from16 v16, v4

    const/4 v4, 0x3

    invoke-static {v10, v12, v0, v3, v4}, Lcom/gmodvr/flat/VtfPreview;->mix(IIIII)I

    move-result v10

    aput v10, v11, v0

    .line 73
    aget v10, v11, v19

    aget v12, v11, v3

    invoke-static {v10, v12, v3, v0, v4}, Lcom/gmodvr/flat/VtfPreview;->mix(IIIII)I

    move-result v10

    aput v10, v11, v4

    :goto_1e1
    add-int/lit8 v1, v1, 0x4

    .line 77
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    move/from16 v4, v19

    :goto_1e9
    const/4 v10, 0x4

    if-ge v4, v10, :cond_250

    move/from16 v12, v19

    :goto_1ee
    if-ge v12, v10, :cond_243

    mul-int/lit8 v20, v4, 0x4

    add-int v20, v20, v12

    mul-int/lit8 v27, v20, 0x2

    ushr-int v27, v1, v27

    const/4 v0, 0x3

    and-int/lit8 v3, v27, 0x3

    const/16 v10, 0xf

    if-ne v15, v10, :cond_20c

    mul-int/lit8 v20, v20, 0x3

    move v10, v1

    ushr-long v0, v21, v20

    long-to-int v0, v0

    const/4 v1, 0x7

    and-int/2addr v0, v1

    .line 80
    aget v0, v8, v0

    move/from16 v20, v0

    goto :goto_218

    :cond_20c
    move v10, v1

    const/4 v1, 0x7

    const/4 v0, 0x3

    if-gt v9, v2, :cond_216

    if-ne v3, v0, :cond_216

    move/from16 v20, v19

    goto :goto_218

    :cond_216
    const/16 v20, 0xff

    :goto_218
    add-int v0, v7, v12

    if-ge v0, v14, :cond_234

    add-int v0, v5, v4

    if-ge v0, v13, :cond_234

    move-object/from16 v1, v16

    move/from16 v16, v2

    .line 83
    iget-object v2, v1, Lcom/gmodvr/flat/VtfPreview;->pixels:[I

    mul-int/2addr v0, v14

    add-int/2addr v0, v7

    add-int/2addr v0, v12

    const/16 v18, 0x18

    shl-int/lit8 v20, v20, 0x18

    aget v3, v11, v3

    or-int v3, v20, v3

    aput v3, v2, v0

    goto :goto_238

    :cond_234
    move-object/from16 v1, v16

    move/from16 v16, v2

    :goto_238
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    const/4 v0, 0x2

    const/4 v3, 0x1

    move-object/from16 v16, v1

    move v1, v10

    const/4 v10, 0x4

    goto :goto_1ee

    :cond_243
    move v10, v1

    move-object/from16 v1, v16

    move/from16 v16, v2

    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x2

    const/4 v3, 0x1

    move-object/from16 v16, v1

    move v1, v10

    goto :goto_1e9

    :cond_250
    move-object/from16 v1, v16

    const/16 v0, 0xf

    if-ne v15, v0, :cond_259

    const/16 v0, 0x10

    goto :goto_25b

    :cond_259
    const/16 v0, 0x8

    :goto_25b
    add-int v2, v25, v0

    add-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    move-object v4, v1

    const/16 v1, 0xff

    const/4 v3, 0x1

    const/16 v9, 0x8

    const/4 v11, 0x7

    goto/16 :goto_115

    :cond_26a
    move/from16 v25, v2

    move-object v1, v4

    const/16 v19, 0x0

    add-int/lit8 v5, v5, 0x4

    move-object/from16 v0, p0

    const/16 v1, 0xff

    const/4 v3, 0x1

    const/16 v9, 0x8

    const/4 v11, 0x7

    goto/16 :goto_112

    :cond_27b
    move-object v1, v4

    goto :goto_2b8

    :goto_27d
    move/from16 v0, v19

    .line 47
    :goto_27f
    iget-object v3, v1, Lcom/gmodvr/flat/VtfPreview;->pixels:[I

    array-length v4, v3

    if-ge v0, v4, :cond_2b8

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    if-nez v15, :cond_28c

    move/from16 v5, v19

    goto :goto_28d

    :cond_28c
    const/4 v5, 0x2

    :goto_28d
    add-int/2addr v5, v4

    .line 49
    aget-byte v5, p0, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    add-int/lit8 v7, v4, 0x1

    .line 50
    aget-byte v7, p0, v7

    and-int/2addr v7, v6

    if-nez v15, :cond_29c

    const/4 v8, 0x2

    goto :goto_29e

    :cond_29c
    move/from16 v8, v19

    :goto_29e
    add-int/2addr v8, v4

    aget-byte v8, p0, v8

    and-int/2addr v8, v6

    add-int/lit8 v4, v4, 0x3

    .line 51
    aget-byte v4, p0, v4

    and-int/2addr v4, v6

    const/16 v9, 0x18

    shl-int/2addr v4, v9

    const/16 v10, 0x10

    shl-int/2addr v5, v10

    or-int/2addr v4, v5

    const/16 v5, 0x8

    shl-int/2addr v7, v5

    or-int/2addr v4, v7

    or-int/2addr v4, v8

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27f

    :cond_2b8
    :goto_2b8
    return-object v1

    .line 44
    :cond_2b9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Truncated VTF preview."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_2c1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported VTF preview."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_2c9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid VTF preview."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static imageBytes(III)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_3e

    const/16 v0, 0xc

    if-ne p2, v0, :cond_7

    goto :goto_3e

    :cond_7
    const/16 v0, 0xd

    const/16 v1, 0xf

    if-eq p2, v0, :cond_2c

    if-ne p2, v1, :cond_10

    goto :goto_2c

    .line 94
    :cond_10
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported VTF pixel format "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    add-int/lit8 p0, p0, 0x3

    .line 93
    div-int/lit8 p0, p0, 0x4

    add-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    mul-int/2addr p0, p1

    if-ne p2, v1, :cond_3a

    const/16 p1, 0x10

    goto :goto_3c

    :cond_3a
    const/16 p1, 0x8

    :goto_3c
    mul-int/2addr p0, p1

    return p0

    :cond_3e
    :goto_3e
    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static mix(IIIII)I
    .registers 11

    const/16 v0, 0x8

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 104
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    move v1, v2

    :goto_a
    const/4 v3, 0x3

    if-ge v2, v3, :cond_21

    aget v3, v0, v2

    shr-int v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, p2

    shr-int v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    .line 105
    div-int/2addr v4, p4

    shl-int v3, v4, v3

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_21
    return v1
.end method

.method private static rgb565(I)I
    .registers 4

    .line 0
    shr-int/lit8 v0, p0, 0xb

    and-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x3f

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 v2, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v2, v1, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x3

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    return p0
.end method
