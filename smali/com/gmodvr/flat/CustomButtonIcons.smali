###### Class com.gmodvr.flat.CustomButtonIcons (com.gmodvr.flat.CustomButtonIcons)
.class final Lcom/gmodvr/flat/CustomButtonIcons;
.super Ljava/lang/Object;
.source "CustomButtonIcons.java"

# interfaces
.implements Lcom/gmodvr/flat/CustomButtons$IconSource;


# static fields
.field static final LABEL_OPACITY:F = 0.75f

.field static final LABEL_RGB:I = 0xaaff00

.field static final SIZE:I = 0x100


# instance fields
.field private final backgrounds:[[I

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/gmodvr/flat/CustomButtons$Shape;->values()[Lcom/gmodvr/flat/CustomButtons$Shape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/gmodvr/flat/CustomButtonIcons;->backgrounds:[[I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonIcons;->context:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized background(Lcom/gmodvr/flat/CustomButtons$Shape;)[I
    .registers 11

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonIcons;->backgrounds:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_38

    if-eqz v0, :cond_d

    .line 75
    monitor-exit p0

    return-object v0

    .line 76
    :cond_d
    :try_start_d
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 78
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 79
    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonIcons;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/gmodvr/flat/CustomButtonIcons;->resource(Lcom/gmodvr/flat/CustomButtons$Shape;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_3a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v2, :cond_36

    goto :goto_3a

    :cond_36
    :goto_36
    move-object v1, v0

    goto :goto_40

    :catchall_38
    move-exception p1

    goto :goto_5b

    :cond_3a
    :goto_3a
    const/4 v1, 0x1

    .line 81
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_36

    :goto_40
    const/high16 v0, 0x10000

    .line 82
    new-array v0, v0, [I

    const/16 v7, 0x100

    const/16 v8, 0x100

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    .line 83
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 84
    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonIcons;->backgrounds:[[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object v0, v1, p1
    :try_end_59
    .catchall {:try_start_d .. :try_end_59} :catchall_38

    .line 85
    monitor-exit p0

    return-object v0

    :goto_5b
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_38

    throw p1
.end method

.method public static compose([I[BI)[B
    .registers 13

    .line 35
    array-length v0, p0

    mul-int v1, p2, p2

    if-ne v0, v1, :cond_79

    array-length v0, p1

    if-ne v0, v1, :cond_79

    mul-int/lit8 v1, v1, 0x4

    .line 37
    new-array p2, v1, [B

    const/4 v0, 0x0

    .line 39
    :goto_d
    array-length v1, p0

    if-ge v0, v1, :cond_78

    .line 40
    aget v1, p0, v0

    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 42
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float/2addr v2, v5

    add-float v5, v4, v2

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_4e

    const/high16 v7, 0x432a0000    # 170.0f

    mul-float/2addr v7, v4

    shr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    mul-float v8, v4, v3

    shr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    div-float/2addr v8, v5

    mul-float/2addr v4, v6

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v4, v1

    div-float v6, v4, v5

    move v1, v6

    move v6, v7

    goto :goto_50

    :cond_4e
    move v1, v6

    move v8, v1

    :goto_50
    mul-int/lit8 v2, v0, 0x4

    .line 51
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    add-int/lit8 v4, v2, 0x1

    .line 52
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, p2, v4

    add-int/lit8 v4, v2, 0x2

    .line 53
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v4

    add-int/lit8 v2, v2, 0x3

    mul-float/2addr v5, v3

    .line 54
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_78
    return-object p2

    .line 36
    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Icon inputs must be "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static coverage(Ljava/lang/String;)[B
    .registers 12

    const/16 v0, 0x100

    .line 99
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    new-instance v2, Landroid/graphics/Paint;

    const/16 v3, 0x81

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, -0x1

    .line 102
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    const-string v3, "sans-serif-black"

    const/4 v10, 0x0

    invoke-static {v3, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_23

    move-object v4, v3

    goto :goto_25

    .line 104
    :cond_23
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_25
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-nez v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    move v3, v10

    .line 105
    :goto_2d
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const v3, 0x430f5c29    # 143.36f

    .line 107
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, p0, v10, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 111
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v5, :cond_54

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const v7, 0x43333333    # 179.2f

    div-float/2addr v7, v5

    goto :goto_55

    :cond_54
    move v7, v6

    .line 112
    :goto_55
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_65

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v8, 0x43051eb8    # 133.12f

    div-float/2addr v8, v5

    goto :goto_66

    :cond_65
    move v8, v6

    .line 111
    :goto_66
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpg-float v6, v5, v6

    if-gez v6, :cond_7d

    mul-float/2addr v5, v3

    .line 114
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p0, v10, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 117
    :cond_7d
    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    const/high16 v6, 0x43000000    # 128.0f

    sub-float v3, v6, v3

    .line 118
    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v4

    int-to-float v4, v7

    div-float/2addr v4, v5

    sub-float/2addr v6, v4

    .line 119
    invoke-virtual {v1, p0, v3, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 p0, 0x10000

    .line 120
    new-array v1, p0, [I

    const/16 v8, 0x100

    const/16 v9, 0x100

    const/4 v4, 0x0

    const/16 v5, 0x100

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v1

    .line 121
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 122
    new-array v2, p0, [B

    :goto_a9
    if-ge v10, p0, :cond_b5

    .line 123
    aget v3, v1, v10

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a9

    .line 124
    :cond_b5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method private static resource(Lcom/gmodvr/flat/CustomButtons$Shape;)I
    .registers 2

    .line 89
    sget-object v0, Lcom/gmodvr/flat/CustomButtonIcons$1;->$SwitchMap$com$gmodvr$flat$CustomButtons$Shape:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    .line 93
    sget p0, Lcom/gmodvr/flat/R$drawable;->custom_button_circle:I

    return p0

    .line 91
    :cond_11
    sget p0, Lcom/gmodvr/flat/R$drawable;->custom_button_sharp:I

    return p0

    .line 90
    :cond_14
    sget p0, Lcom/gmodvr/flat/R$drawable;->custom_button_square:I

    return p0
.end method


# virtual methods
.method public bitmap(Lcom/gmodvr/flat/CustomButtons$Shape;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    .line 65
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CustomButtonIcons;->background(Lcom/gmodvr/flat/CustomButtons$Shape;)[I

    move-result-object p0

    invoke-static {p2}, Lcom/gmodvr/flat/CustomButtonIcons;->coverage(Ljava/lang/String;)[B

    move-result-object p1

    const/16 p2, 0x100

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/CustomButtonIcons;->compose([I[BI)[B

    move-result-object p0

    const/high16 p1, 0x10000

    .line 66
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_13
    if-ge v1, p1, :cond_36

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x3

    .line 68
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 70
    :cond_36
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p2, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public rgba(Lcom/gmodvr/flat/CustomButtons$Entry;)[B
    .registers 3

    .line 60
    iget-object v0, p1, Lcom/gmodvr/flat/CustomButtons$Entry;->shape:Lcom/gmodvr/flat/CustomButtons$Shape;

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/CustomButtonIcons;->background(Lcom/gmodvr/flat/CustomButtons$Shape;)[I

    move-result-object p0

    iget-object p1, p1, Lcom/gmodvr/flat/CustomButtons$Entry;->label:Ljava/lang/String;

    invoke-static {p1}, Lcom/gmodvr/flat/CustomButtonIcons;->coverage(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v0, 0x100

    invoke-static {p0, p1, v0}, Lcom/gmodvr/flat/CustomButtonIcons;->compose([I[BI)[B

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.CustomButtonIcons.AnonymousClass1 (com.gmodvr.flat.CustomButtonIcons$1)
.class synthetic Lcom/gmodvr/flat/CustomButtonIcons$1;
.super Ljava/lang/Object;
.source "CustomButtonIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/CustomButtonIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$gmodvr$flat$CustomButtons$Shape:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 89
    invoke-static {}, Lcom/gmodvr/flat/CustomButtons$Shape;->values()[Lcom/gmodvr/flat/CustomButtons$Shape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gmodvr/flat/CustomButtonIcons$1;->$SwitchMap$com$gmodvr$flat$CustomButtons$Shape:[I

    :try_start_9
    sget-object v1, Lcom/gmodvr/flat/CustomButtons$Shape;->SQUARE:Lcom/gmodvr/flat/CustomButtons$Shape;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gmodvr/flat/CustomButtonIcons$1;->$SwitchMap$com$gmodvr$flat$CustomButtons$Shape:[I

    sget-object v1, Lcom/gmodvr/flat/CustomButtons$Shape;->SHARP:Lcom/gmodvr/flat/CustomButtons$Shape;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/gmodvr/flat/CustomButtonIcons$1;->$SwitchMap$com$gmodvr$flat$CustomButtons$Shape:[I

    sget-object v1, Lcom/gmodvr/flat/CustomButtons$Shape;->CIRCLE:Lcom/gmodvr/flat/CustomButtons$Shape;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
