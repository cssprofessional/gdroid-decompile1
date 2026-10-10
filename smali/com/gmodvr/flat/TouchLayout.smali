###### Class com.gmodvr.flat.TouchLayout (com.gmodvr.flat.TouchLayout)
.class final Lcom/gmodvr/flat/TouchLayout;
.super Ljava/lang/Object;
.source "TouchLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/TouchLayout$Button;,
        Lcom/gmodvr/flat/TouchLayout$Line;
    }
.end annotation


# static fields
.field static final COLORIZE:I = 0x1000

.field static final HIDE:I = 0x1

.field private static final RUNTIME_FLAGS:I = 0xc04


# instance fields
.field final buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/TouchLayout$Button;",
            ">;"
        }
    .end annotation
.end field

.field gridCount:I

.field private final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/TouchLayout$Line;",
            ">;"
        }
    .end annotation
.end field

.field final screenAspect:F

.field snap:Z


# direct methods
.method public static synthetic $r8$lambda$NWS0Q7ZOrwDdpDvsNgVG5bnBH58(Ljava/util/Set;Lcom/gmodvr/flat/TouchLayout$Button;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayout;->lambda$mergeCustom$0(Ljava/util/Set;Lcom/gmodvr/flat/TouchLayout$Button;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cH5K5VRhnY2dJSHzdVco6f83pj4(Lcom/gmodvr/flat/TouchLayout$Line;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayout;->lambda$reset$2(Lcom/gmodvr/flat/TouchLayout$Line;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jDYsz6MdwlZDlzAJryRRWxAJL8c(Lcom/gmodvr/flat/TouchLayout;Lcom/gmodvr/flat/TouchLayout$Line;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayout;->lambda$mergeCustom$1(Lcom/gmodvr/flat/TouchLayout$Line;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayout;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(F)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayout;->lines:Ljava/util/List;

    const/16 v0, 0x32

    .line 80
    iput v0, p0, Lcom/gmodvr/flat/TouchLayout;->gridCount:I

    .line 83
    iput p1, p0, Lcom/gmodvr/flat/TouchLayout;->screenAspect:F

    return-void
.end method

.method private static channel(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xff

    .line 247
    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayout;->integer(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static clamp(FFF)F
    .registers 3

    .line 235
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static integer(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 245
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid number in the saved layout."

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static synthetic lambda$mergeCustom$0(Ljava/util/Set;Lcom/gmodvr/flat/TouchLayout$Button;)Z
    .registers 4

    .line 174
    iget-object v0, p1, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    const-string v1, "custom_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p1, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private synthetic lambda$mergeCustom$1(Lcom/gmodvr/flat/TouchLayout$Line;)Z
    .registers 2

    .line 175
    iget-object p1, p1, Lcom/gmodvr/flat/TouchLayout$Line;->button:Lcom/gmodvr/flat/TouchLayout$Button;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static synthetic lambda$reset$2(Lcom/gmodvr/flat/TouchLayout$Line;)Z
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout$Line;->button:Lcom/gmodvr/flat/TouchLayout$Button;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static number(Ljava/lang/String;)F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 239
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_b

    if-eqz v0, :cond_b

    return p0

    .line 241
    :catch_b
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid number in the saved layout."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;F)Lcom/gmodvr/flat/TouchLayout;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 86
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_20b

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-lez v3, :cond_20b

    .line 88
    new-instance v3, Lcom/gmodvr/flat/TouchLayout;

    invoke-direct {v3, v1}, Lcom/gmodvr/flat/TouchLayout;-><init>(F)V

    .line 90
    const-string v4, "\\R"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v10, 0x0

    move v7, v10

    :goto_1d
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v7, v6, :cond_6d

    aget-object v8, v5, v7

    .line 91
    invoke-static {v8}, Lcom/gmodvr/flat/TouchLayout;->tokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 92
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v11, :cond_2e

    goto :goto_6a

    .line 93
    :cond_2e
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v13, "touch_grid_count"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/gmodvr/flat/TouchLayout;->integer(Ljava/lang/String;)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Lcom/gmodvr/flat/TouchLayout;->gridCount:I

    .line 94
    :cond_4c
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "touch_grid_enable"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/gmodvr/flat/TouchLayout;->integer(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_67

    goto :goto_68

    :cond_67
    move v12, v10

    :goto_68
    iput-boolean v12, v3, Lcom/gmodvr/flat/TouchLayout;->snap:Z

    :cond_6a
    :goto_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 96
    :cond_6d
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v13, v0

    move v14, v10

    :goto_73
    if-ge v14, v13, :cond_1fa

    aget-object v15, v0, v14

    .line 97
    invoke-static {v15}, Lcom/gmodvr/flat/TouchLayout;->tokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 99
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1e6

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "touch_addbutton"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e6

    .line 100
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_1de

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1de

    .line 101
    new-instance v9, Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x3

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v5, v7, v8}, Lcom/gmodvr/flat/TouchLayout$Button;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    .line 102
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/gmodvr/flat/TouchLayout;->number(Ljava/lang/String;)F

    move-result v7

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/gmodvr/flat/TouchLayout;->number(Ljava/lang/String;)F

    move-result v8

    const/4 v5, 0x6

    .line 103
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/gmodvr/flat/TouchLayout;->number(Ljava/lang/String;)F

    move-result v5

    const/4 v10, 0x7

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/gmodvr/flat/TouchLayout;->number(Ljava/lang/String;)F

    move-result v10

    cmpg-float v16, v5, v7

    .line 104
    const-string v11, "."

    if-lez v16, :cond_1c1

    cmpg-float v16, v10, v8

    if-lez v16, :cond_1c1

    .line 105
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const/16 v2, 0xc

    if-lt v12, v2, :cond_12f

    .line 106
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/gmodvr/flat/TouchLayout;->channel(Ljava/lang/String;)I

    move-result v6

    iput v6, v9, Lcom/gmodvr/flat/TouchLayout$Button;->r:I

    const/16 v6, 0x9

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/gmodvr/flat/TouchLayout;->channel(Ljava/lang/String;)I

    move-result v6

    iput v6, v9, Lcom/gmodvr/flat/TouchLayout$Button;->g:I

    const/16 v6, 0xa

    .line 107
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/gmodvr/flat/TouchLayout;->channel(Ljava/lang/String;)I

    move-result v6

    iput v6, v9, Lcom/gmodvr/flat/TouchLayout$Button;->b:I

    const/16 v6, 0xb

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/gmodvr/flat/TouchLayout;->channel(Ljava/lang/String;)I

    move-result v6

    iput v6, v9, Lcom/gmodvr/flat/TouchLayout$Button;->a:I

    .line 109
    :cond_12f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/16 v12, 0xd

    if-lt v6, v12, :cond_145

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/gmodvr/flat/TouchLayout;->integer(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v2, v2, -0xc05

    iput v2, v9, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    .line 110
    :cond_145
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v6, 0xe

    if-lt v2, v6, :cond_159

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/gmodvr/flat/TouchLayout;->number(Ljava/lang/String;)F

    move-result v2

    :goto_157
    const/4 v12, 0x0

    goto :goto_15c

    :cond_159
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_157

    :goto_15c
    cmpg-float v4, v2, v12

    if-lez v4, :cond_1a4

    .line 112
    invoke-virtual {v9}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result v4

    if-nez v4, :cond_16c

    sub-float v4, v5, v7

    mul-float/2addr v4, v1

    mul-float/2addr v4, v2

    add-float v10, v8, v4

    :cond_16c
    sub-float v2, v5, v7

    sub-float/2addr v10, v8

    move-object v4, v3

    move-object v5, v9

    move v6, v7

    move v7, v8

    move v8, v2

    move-object v2, v9

    move v9, v10

    .line 113
    invoke-virtual/range {v4 .. v9}, Lcom/gmodvr/flat/TouchLayout;->rect(Lcom/gmodvr/flat/TouchLayout$Button;FFFF)V

    .line 115
    iget-object v4, v2, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/TouchLayout;->find(Ljava/lang/String;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v4

    if-nez v4, :cond_188

    .line 116
    iget-object v4, v3, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v2

    goto :goto_1e8

    .line 115
    :cond_188
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate touch button "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a4
    move-object v2, v9

    .line 111
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid aspect for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c1
    move-object v2, v9

    .line 104
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bounds for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1de
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid touch button in the saved layout."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e6
    move v12, v2

    const/4 v9, 0x0

    .line 118
    :goto_1e8
    iget-object v2, v3, Lcom/gmodvr/flat/TouchLayout;->lines:Ljava/util/List;

    new-instance v4, Lcom/gmodvr/flat/TouchLayout$Line;

    invoke-direct {v4, v15, v9}, Lcom/gmodvr/flat/TouchLayout$Line;-><init>(Ljava/lang/String;Lcom/gmodvr/flat/TouchLayout$Button;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move v2, v12

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_73

    .line 120
    :cond_1fa
    iget-object v0, v3, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_203

    return-object v3

    :cond_203
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The saved layout has no touch controls."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_20b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid preview dimensions."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static profileFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 205
    const-string v0, "\\R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const-string v1, "touch.cfg"

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_33

    aget-object v5, p0, v3

    .line 206
    invoke-static {v5}, Lcom/gmodvr/flat/TouchLayout;->tokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 207
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_30

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "touch_config_file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 210
    :cond_33
    const-string p0, "[A-Za-z0-9_.-]+\\.cfg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_44

    const-string p0, ".."

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_44

    move-object v1, v4

    :cond_44
    return-object v1
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tokens(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 216
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_89

    .line 217
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_20

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_20

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 218
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_89

    const-string v3, "//"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_89

    .line 219
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_3e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    move v4, v1

    :goto_3f
    if-eqz v4, :cond_43

    add-int/lit8 v2, v2, 0x1

    .line 222
    :cond_43
    :goto_43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_80

    add-int/lit8 v6, v2, 0x1

    .line 223
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v4, :cond_54

    if-ne v7, v5, :cond_54

    goto :goto_60

    :cond_54
    if-nez v4, :cond_62

    .line 225
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_60

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_62

    :cond_60
    :goto_60
    move v2, v6

    goto :goto_80

    :cond_62
    if-eqz v4, :cond_7b

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_7b

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_7b

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_7b

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7c

    :cond_7b
    move v2, v6

    .line 227
    :goto_7c
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 229
    :cond_80
    :goto_80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_89
    :goto_89
    return-object v0
.end method


# virtual methods
.method public cfg(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "// Saved by the launcher control layout editor.\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v1, "touch_config_file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayout;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "touch_grid_count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout;->gridCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "touch_grid_enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayout;->snap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_38
    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/TouchLayout$Line;

    .line 195
    iget-object v2, v1, Lcom/gmodvr/flat/TouchLayout$Line;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/gmodvr/flat/TouchLayout;->tokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 196
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7c

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "touch_config_file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "touch_grid_count"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 197
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "touch_grid_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    goto :goto_38

    .line 198
    :cond_7c
    iget-object v2, v1, Lcom/gmodvr/flat/TouchLayout$Line;->button:Lcom/gmodvr/flat/TouchLayout$Button;

    if-eqz v2, :cond_85

    invoke-virtual {v2}, Lcom/gmodvr/flat/TouchLayout$Button;->cfg()Ljava/lang/String;

    move-result-object v1

    goto :goto_87

    :cond_85
    iget-object v1, v1, Lcom/gmodvr/flat/TouchLayout$Line;->text:Ljava/lang/String;

    :goto_87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 200
    :cond_8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public find(Ljava/lang/String;)Lcom/gmodvr/flat/TouchLayout$Button;
    .registers 4

    .line 125
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/TouchLayout$Button;

    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public mergeCustom(Ljava/util/List;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 157
    invoke-static {p1}, Lcom/gmodvr/flat/CustomButtons;->lastSlot(Ljava/util/List;)I

    move-result v1

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/CustomButtons$Entry;

    .line 159
    invoke-virtual {v2}, Lcom/gmodvr/flat/CustomButtons$Entry;->buttonName()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p0, v3}, Lcom/gmodvr/flat/TouchLayout;->find(Ljava/lang/String;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v4

    if-nez v4, :cond_65

    .line 163
    new-instance v4, Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/gmodvr/flat/CustomButtons$Entry;->command()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/gmodvr/flat/TouchLayout$Button;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x9b

    .line 164
    iput v5, v4, Lcom/gmodvr/flat/TouchLayout$Button;->a:I

    .line 165
    iget v5, v2, Lcom/gmodvr/flat/CustomButtons$Entry;->slot:I

    invoke-static {v5, v1}, Lcom/gmodvr/flat/CustomButtons;->slotRect(II)[F

    move-result-object v5

    const/4 v6, 0x0

    .line 166
    aget v7, v5, v6

    const/4 v6, 0x1

    aget v8, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-float v9, v5, v7

    sub-float/2addr v5, v7

    iget v6, p0, Lcom/gmodvr/flat/TouchLayout;->screenAspect:F

    mul-float v10, v5, v6

    move-object v5, p0

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/gmodvr/flat/TouchLayout;->rect(Lcom/gmodvr/flat/TouchLayout$Button;FFFF)V

    .line 167
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayout;->lines:Ljava/util/List;

    new-instance v6, Lcom/gmodvr/flat/TouchLayout$Line;

    const-string v7, ""

    invoke-direct {v6, v7, v4}, Lcom/gmodvr/flat/TouchLayout$Line;-><init>(Ljava/lang/String;Lcom/gmodvr/flat/TouchLayout$Button;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_65
    invoke-virtual {v2}, Lcom/gmodvr/flat/CustomButtons$Entry;->command()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/gmodvr/flat/TouchLayout$Button;->command:Ljava/lang/String;

    .line 172
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    goto :goto_d

    .line 174
    :cond_74
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    new-instance p2, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 175
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayout;->lines:Ljava/util/List;

    new-instance p2, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/TouchLayout;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public rect(Lcom/gmodvr/flat/TouchLayout$Button;FFFF)V
    .registers 11

    .line 130
    iget v0, p0, Lcom/gmodvr/flat/TouchLayout;->gridCount:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcom/gmodvr/flat/TouchLayout;->screenAspect:F

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 131
    invoke-static {p4, v1, v2}, Lcom/gmodvr/flat/TouchLayout;->clamp(FFF)F

    move-result p4

    .line 132
    invoke-static {p5, v0, v2}, Lcom/gmodvr/flat/TouchLayout;->clamp(FFF)F

    move-result p5

    sub-float v0, v2, p4

    const/4 v1, 0x0

    .line 133
    invoke-static {p2, v1, v0}, Lcom/gmodvr/flat/TouchLayout;->clamp(FFF)F

    move-result p2

    sub-float v0, v2, p5

    .line 134
    invoke-static {p3, v1, v0}, Lcom/gmodvr/flat/TouchLayout;->clamp(FFF)F

    move-result p3

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    .line 136
    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayout;->snap:Z

    if-eqz v0, :cond_69

    .line 137
    iget v0, p0, Lcom/gmodvr/flat/TouchLayout;->gridCount:I

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/gmodvr/flat/TouchLayout;->gridCount:I

    int-to-float v3, v0

    div-float/2addr p2, v3

    int-to-float v0, v0

    mul-float/2addr p4, v0

    .line 138
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Lcom/gmodvr/flat/TouchLayout;->gridCount:I

    int-to-float v3, v0

    div-float/2addr p4, v3

    int-to-float v0, v0

    .line 139
    iget v3, p0, Lcom/gmodvr/flat/TouchLayout;->screenAspect:F

    div-float/2addr v0, v3

    mul-float/2addr p3, v0

    .line 140
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    mul-float/2addr p5, v0

    .line 141
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v0

    cmpl-float v3, p5, v2

    if-lez v3, :cond_62

    float-to-double v3, v0

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v3, v0

    sub-float/2addr p5, v3

    sub-float/2addr p3, p5

    move p5, v3

    :cond_62
    cmpl-float v0, p4, v2

    if-lez v0, :cond_69

    sub-float/2addr p4, v2

    sub-float/2addr p2, p4

    goto :goto_6a

    :cond_69
    move v2, p4

    .line 150
    :goto_6a
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    .line 151
    iput v2, p1, Lcom/gmodvr/flat/TouchLayout$Button;->x2:F

    iput p5, p1, Lcom/gmodvr/flat/TouchLayout$Button;->y2:F

    .line 152
    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->height()F

    move-result p2

    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->width()F

    move-result p3

    iget p0, p0, Lcom/gmodvr/flat/TouchLayout;->screenAspect:F

    mul-float/2addr p3, p0

    div-float/2addr p2, p3

    iput p2, p1, Lcom/gmodvr/flat/TouchLayout$Button;->aspect:F

    return-void
.end method

.method public reset(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/TouchLayout;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayout;->lines:Ljava/util/List;

    new-instance v1, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 180
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object p1, p1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/TouchLayout$Button;

    .line 182
    iget v3, v0, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    iget v4, v0, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    invoke-virtual {v0}, Lcom/gmodvr/flat/TouchLayout$Button;->width()F

    move-result v5

    invoke-virtual {v0}, Lcom/gmodvr/flat/TouchLayout$Button;->height()F

    move-result v6

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/gmodvr/flat/TouchLayout;->rect(Lcom/gmodvr/flat/TouchLayout$Button;FFFF)V

    .line 183
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayout;->lines:Ljava/util/List;

    new-instance v2, Lcom/gmodvr/flat/TouchLayout$Line;

    const-string v3, ""

    invoke-direct {v2, v3, v0}, Lcom/gmodvr/flat/TouchLayout$Line;-><init>(Ljava/lang/String;Lcom/gmodvr/flat/TouchLayout$Button;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 186
    :cond_44
    invoke-virtual {p0, p2, p3}, Lcom/gmodvr/flat/TouchLayout;->mergeCustom(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayout.Button (com.gmodvr.flat.TouchLayout$Button)
.class final Lcom/gmodvr/flat/TouchLayout$Button;
.super Ljava/lang/Object;
.source "TouchLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/TouchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Button"
.end annotation


# instance fields
.field a:I

.field aspect:F

.field b:I

.field command:Ljava/lang/String;

.field flags:I

.field g:I

.field final name:Ljava/lang/String;

.field r:I

.field texture:Ljava/lang/String;

.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 21
    iput v0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->r:I

    iput v0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->g:I

    iput v0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->b:I

    iput v0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->a:I

    .line 24
    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/gmodvr/flat/TouchLayout$Button;->command:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cfg()Ljava/lang/String;
    .registers 16

    .line 64
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    .line 66
    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayout;->-$$Nest$smquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayout;->-$$Nest$smquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->command:Ljava/lang/String;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayout;->-$$Nest$smquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->x2:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->y2:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->r:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    and-int/lit16 v1, v1, -0xc05

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->aspect:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    filled-new-array/range {v2 .. v14}, [Ljava/lang/Object;

    move-result-object p0

    .line 64
    const-string v1, "touch_addbutton %s %s %s %.6f %.6f %.6f %.6f %d %d %d %d %d %.6f"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public color()I
    .registers 3

    .line 33
    iget v0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->r:I

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    iget v1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->g:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->b:I

    or-int/2addr p0, v0

    return p0
.end method

.method public color(I)V
    .registers 3

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 35
    iput v0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->r:I

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 36
    iput v0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->g:I

    and-int/lit16 p1, p1, 0xff

    .line 37
    iput p1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->b:I

    .line 38
    iget p1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    return-void
.end method

.method public height()F
    .registers 2

    .line 32
    iget v0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->y2:F

    iget p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public hidden()Z
    .registers 2

    .line 30
    iget p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public label()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_13e

    goto/16 :goto_cb

    :sswitch_12
    const-string v5, "invprev"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_cb

    :cond_1c
    const/16 v4, 0xe

    goto/16 :goto_cb

    :sswitch_20
    const-string v5, "invnext"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_cb

    :cond_2a
    const/16 v4, 0xd

    goto/16 :goto_cb

    :sswitch_2e
    const-string v5, "thirdperson"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_cb

    :cond_38
    const/16 v4, 0xc

    goto/16 :goto_cb

    :sswitch_3c
    const-string v5, "voice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_cb

    :cond_46
    const/16 v4, 0xb

    goto/16 :goto_cb

    :sswitch_4a
    const-string v5, "speed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto/16 :goto_cb

    :cond_54
    const/16 v4, 0xa

    goto/16 :goto_cb

    :sswitch_58
    const-string v5, "score"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    goto/16 :goto_cb

    :cond_62
    const/16 v4, 0x9

    goto/16 :goto_cb

    :sswitch_66
    const-string v5, "move"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    goto/16 :goto_cb

    :cond_70
    const/16 v4, 0x8

    goto/16 :goto_cb

    :sswitch_74
    const-string v5, "look"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto :goto_cb

    :cond_7d
    move v4, v0

    goto :goto_cb

    :sswitch_7f
    const-string v5, "edit"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto :goto_cb

    :cond_88
    const/4 v4, 0x6

    goto :goto_cb

    :sswitch_8a
    const-string v5, "duck"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    goto :goto_cb

    :cond_93
    const/4 v4, 0x5

    goto :goto_cb

    :sswitch_95
    const-string v5, "lastinv"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    goto :goto_cb

    :cond_9e
    const/4 v4, 0x4

    goto :goto_cb

    :sswitch_a0
    const-string v5, "contextmenu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    goto :goto_cb

    :cond_a9
    const/4 v4, 0x3

    goto :goto_cb

    :sswitch_ab
    const-string v5, "spawnmenu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b4

    goto :goto_cb

    :cond_b4
    const/4 v4, 0x2

    goto :goto_cb

    :sswitch_b6
    const-string v5, "attack2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bf

    goto :goto_cb

    :cond_bf
    move v4, v1

    goto :goto_cb

    :sswitch_c1
    const-string v5, "attack"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ca

    goto :goto_cb

    :cond_ca
    move v4, v2

    :goto_cb
    packed-switch v4, :pswitch_data_17c

    .line 58
    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    const-string v4, "custom_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom button "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_10f

    .line 59
    :cond_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_10f
    return-object p0

    .line 52
    :pswitch_110
    const-string p0, "Previous weapon"

    return-object p0

    .line 53
    :pswitch_113
    const-string p0, "Next weapon"

    return-object p0

    .line 56
    :pswitch_116
    const-string p0, "Third person"

    return-object p0

    .line 57
    :pswitch_119
    const-string p0, "Voice chat"

    return-object p0

    .line 55
    :pswitch_11c
    const-string p0, "Sprint"

    return-object p0

    .line 54
    :pswitch_11f
    const-string p0, "Scoreboard"

    return-object p0

    .line 43
    :pswitch_122
    const-string p0, "Move zone"

    return-object p0

    .line 44
    :pswitch_125
    const-string p0, "Look zone"

    return-object p0

    .line 48
    :pswitch_128
    const-string p0, "Layout editor"

    return-object p0

    .line 47
    :pswitch_12b
    const-string p0, "Crouch"

    return-object p0

    .line 51
    :pswitch_12e
    const-string p0, "Last weapon"

    return-object p0

    .line 49
    :pswitch_131
    const-string p0, "Context menu"

    return-object p0

    .line 50
    :pswitch_134
    const-string p0, "Spawn menu"

    return-object p0

    .line 46
    :pswitch_137
    const-string p0, "Secondary fire"

    return-object p0

    .line 45
    :pswitch_13a
    const-string p0, "Fire"

    return-object p0

    nop

    :sswitch_data_13e
    .sparse-switch
        -0x53e111b8 -> :sswitch_c1
        -0x28412516 -> :sswitch_b6
        -0x16302ca6 -> :sswitch_ab
        -0x6162472 -> :sswitch_a0
        -0x2ce0a65 -> :sswitch_95
        0x2f38b9 -> :sswitch_8a
        0x2f6e0a -> :sswitch_7f
        0x32c69f -> :sswitch_74
        0x333bd1 -> :sswitch_66
        0x6833e92 -> :sswitch_58
        0x6890047 -> :sswitch_4a
        0x6b2e132 -> :sswitch_3c
        0x36a1377c -> :sswitch_2e
        0x74d5c264 -> :sswitch_20
        0x74d6d9a4 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
    .end packed-switch
.end method

.method public width()F
    .registers 2

    .line 31
    iget v0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->x2:F

    iget p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public zone()Z
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.TouchLayout.Line (com.gmodvr.flat.TouchLayout$Line)
.class final Lcom/gmodvr/flat/TouchLayout$Line;
.super Ljava/lang/Object;
.source "TouchLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/TouchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Line"
.end annotation


# instance fields
.field final button:Lcom/gmodvr/flat/TouchLayout$Button;

.field final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gmodvr/flat/TouchLayout$Button;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayout$Line;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayout$Line;->button:Lcom/gmodvr/flat/TouchLayout$Button;

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayout$$ExternalSyntheticLambda0 (com.gmodvr.flat.TouchLayout$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayout;->$r8$lambda$NWS0Q7ZOrwDdpDvsNgVG5bnBH58(Ljava/util/Set;Lcom/gmodvr/flat/TouchLayout$Button;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.TouchLayout$$ExternalSyntheticLambda1 (com.gmodvr.flat.TouchLayout$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayout;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/TouchLayout;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/TouchLayout;

    check-cast p1, Lcom/gmodvr/flat/TouchLayout$Line;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayout;->$r8$lambda$jDYsz6MdwlZDlzAJryRRWxAJL8c(Lcom/gmodvr/flat/TouchLayout;Lcom/gmodvr/flat/TouchLayout$Line;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.TouchLayout$$ExternalSyntheticLambda2 (com.gmodvr.flat.TouchLayout$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/TouchLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/gmodvr/flat/TouchLayout$Line;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayout;->$r8$lambda$cH5K5VRhnY2dJSHzdVco6f83pj4(Lcom/gmodvr/flat/TouchLayout$Line;)Z

    move-result p0

    return p0
.end method
