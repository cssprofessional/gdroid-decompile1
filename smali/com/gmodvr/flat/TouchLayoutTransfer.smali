###### Class com.gmodvr.flat.TouchLayoutTransfer (com.gmodvr.flat.TouchLayoutTransfer)
.class final Lcom/gmodvr/flat/TouchLayoutTransfer;
.super Ljava/lang/Object;
.source "TouchLayoutTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;
    }
.end annotation


# static fields
.field private static final FORMAT:Ljava/lang/String; = "gmodvr-control-layout"

.field static final MAX_BYTES:I = 0x40000

.field private static final NUMERIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0ao1F_bN8azqq4k2bWcPpy5Tl7Q(Lcom/gmodvr/flat/TouchLayout$Button;Lcom/gmodvr/flat/CustomButtons$Entry;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayoutTransfer;->lambda$read$0(Lcom/gmodvr/flat/TouchLayout$Button;Lcom/gmodvr/flat/CustomButtons$Entry;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 12

    .line 21
    const-string v10, "touch_precise_amount"

    const-string v11, "touch_button_info"

    const-string v0, "touch_enable"

    const-string v1, "touch_draw"

    const-string v2, "touch_opacity"

    const-string v3, "touch_filter"

    const-string v4, "touch_forwardzone"

    const-string v5, "touch_sidezone"

    const-string v6, "touch_pitch"

    const-string v7, "touch_yaw"

    const-string v8, "touch_grid_count"

    const-string v9, "touch_grid_enable"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutTransfer$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/TouchLayoutTransfer;->NUMERIC_SETTINGS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static export(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/TouchLayout;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const-string v0, "touch.cfg"

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/TouchLayout;->cfg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/gmodvr/flat/TouchLayout;->screenAspect:F

    invoke-static {v1, p0}, Lcom/gmodvr/flat/TouchLayoutTransfer;->importConfig(Ljava/lang/String;F)Lcom/gmodvr/flat/TouchLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/TouchLayout;->cfg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "format"

    const-string v3, "gmodvr-control-layout"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "layout"

    .line 42
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "customButtons"

    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/gmodvr/flat/CustomButtons;->toJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 p1, 0x2

    .line 43
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 44
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    const/high16 v0, 0x40000

    if-gt p1, v0, :cond_5b

    return-object p0

    .line 45
    :cond_5b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The control layout is too large to export."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_63} :catch_63

    :catch_63
    move-exception p0

    .line 48
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not export the control layout."

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static importConfig(Ljava/lang/String;F)Lcom/gmodvr/flat/TouchLayout;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const-string v0, "touch_grid_count"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "touch_removeall\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v2, "\\R"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_1c1

    aget-object v5, p0, v4

    .line 99
    invoke-static {v5}, Lcom/gmodvr/flat/TouchLayout;->tokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 100
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_22

    goto/16 :goto_1a6

    .line 101
    :cond_22
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 102
    const-string v7, "touch_config_file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_3f

    .line 103
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_39

    goto :goto_3a

    :cond_39
    move v9, v3

    :goto_3a
    invoke-static {v9}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    goto/16 :goto_1a6

    .line 106
    :cond_3f
    const-string v7, "touch_removeall"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 107
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_4e

    goto :goto_4f

    :cond_4e
    move v9, v3

    :goto_4f
    invoke-static {v9}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    goto/16 :goto_1a6

    .line 110
    :cond_54
    const-string v7, "touch_addbutton"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v10, 0xff

    const/16 v11, 0xa

    if-eqz v7, :cond_e2

    .line 111
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_83

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_83

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_83

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0xe

    if-ne v7, v8, :cond_81

    goto :goto_83

    :cond_81
    move v7, v3

    goto :goto_84

    :cond_83
    :goto_83
    move v7, v9

    :goto_84
    invoke-static {v7}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    .line 112
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v9

    .line 113
    :goto_8b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_dd

    .line 114
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move v8, v3

    .line 115
    :goto_98
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v8, v12, :cond_ad

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v12

    xor-int/2addr v12, v9

    invoke-static {v12}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_98

    :cond_ad
    const/4 v8, 0x3

    if-gt v6, v8, :cond_c5

    .line 116
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v8, v8

    if-ne v6, v9, :cond_bc

    const/16 v12, 0x1f

    goto :goto_bd

    :cond_bc
    move v12, v10

    :goto_bd
    if-gt v8, v12, :cond_c1

    move v8, v9

    goto :goto_c2

    :cond_c1
    move v8, v3

    :goto_c2
    invoke-static {v8}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    .line 117
    :cond_c5
    const-string v8, " \""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    const-string v12, "\\\""

    invoke-virtual {v7, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x22

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    .line 119
    :cond_dd
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1a6

    .line 120
    :cond_e2
    sget-object v7, Lcom/gmodvr/flat/TouchLayoutTransfer;->NUMERIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/16 v12, 0x20

    if-eqz v7, :cond_162

    .line 121
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_f4

    move v7, v9

    goto :goto_f5

    :cond_f4
    move v7, v3

    :goto_f5
    invoke-static {v7}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    .line 124
    :try_start_f8
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 125
    invoke-static {v7}, Ljava/lang/Float;->isFinite(F)Z

    move-result v10

    invoke-static {v10}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    .line 126
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11f

    const-string v10, "touch_grid_enable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_118

    goto :goto_11f

    .line 130
    :cond_118
    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    goto :goto_13e

    :catch_11d
    move-exception p0

    goto :goto_14b

    .line 127
    :cond_11f
    :goto_11f
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 128
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13a

    if-lt v5, v8, :cond_136

    const/16 v7, 0x3e8

    if-gt v5, v7, :cond_136

    goto :goto_137

    :cond_136
    move v9, v3

    :goto_137
    invoke-static {v9}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    .line 129
    :cond_13a
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_13e
    .catch Ljava/lang/NumberFormatException; {:try_start_f8 .. :try_end_13e} :catch_11d

    .line 133
    :goto_13e
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a6

    .line 131
    :goto_14b
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid control setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 134
    :cond_162
    const-string v7, "touch_setgridcolor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1aa

    .line 135
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_173

    move v7, v9

    goto :goto_174

    :cond_173
    move v7, v3

    :goto_174
    invoke-static {v7}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    .line 136
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v9

    :goto_17b
    if-ge v6, v8, :cond_1a3

    .line 139
    :try_start_17d
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_18d

    if-gt v7, v10, :cond_18d

    move v13, v9

    goto :goto_18e

    :cond_18d
    move v13, v3

    .line 140
    :goto_18e
    invoke-static {v13}, Lcom/gmodvr/flat/TouchLayoutTransfer;->require(Z)V

    .line 141
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_197
    .catch Ljava/lang/NumberFormatException; {:try_start_17d .. :try_end_197} :catch_19a

    add-int/lit8 v6, v6, 0x1

    goto :goto_17b

    :catch_19a
    move-exception p0

    .line 142
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid control grid colour."

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 144
    :cond_1a3
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1a6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    .line 146
    :cond_1aa
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This file contains commands outside a control layout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_1c1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayout;->parse(Ljava/lang/String;F)Lcom/gmodvr/flat/TouchLayout;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$read$0(Lcom/gmodvr/flat/TouchLayout$Button;Lcom/gmodvr/flat/CustomButtons$Entry;)Z
    .registers 2

    .line 86
    invoke-virtual {p1}, Lcom/gmodvr/flat/CustomButtons$Entry;->buttonName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/InputStream;F)Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const-string v0, "version"

    if-eqz p0, :cond_176

    .line 54
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/32 v2, 0x40000

    .line 55
    invoke-static {p0, v1, v2, v3}, Lcom/gmodvr/flat/Storage;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    .line 56
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 57
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    .line 58
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 59
    const-string v1, "\ufeff"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 60
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    new-instance v0, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayoutTransfer;->importConfig(Ljava/lang/String;F)Lcom/gmodvr/flat/TouchLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;-><init>(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;)V

    return-object v0

    .line 62
    :cond_53
    :try_start_53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    const-string p0, "gmodvr-control-layout"

    const-string v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_166

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v2, v4

    if-nez p0, :cond_166

    .line 65
    const-string p0, "customButtons"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 66
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-nez v0, :cond_15e

    .line 68
    const-string v0, "buttons"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/CustomButtons;->fromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v2, v3, :cond_156

    const/4 v2, 0x0

    .line 73
    :goto_97
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_fc

    .line 74
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 75
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/CustomButtons$Entry;

    .line 76
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget v7, v4, Lcom/gmodvr/flat/CustomButtons$Entry;->id:I

    int-to-double v8, v7

    cmpl-double v5, v5, v8

    if-nez v5, :cond_f4

    const v5, 0x7fffffff

    if-eq v7, v5, :cond_f4

    const-string v5, "slot"

    .line 77
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget v7, v4, Lcom/gmodvr/flat/CustomButtons$Entry;->slot:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-nez v5, :cond_f4

    .line 79
    iget-object v5, v4, Lcom/gmodvr/flat/CustomButtons$Entry;->shape:Lcom/gmodvr/flat/CustomButtons$Shape;

    iget-object v5, v5, Lcom/gmodvr/flat/CustomButtons$Shape;->id:Ljava/lang/String;

    const-string v6, "shape"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ec

    iget-object v4, v4, Lcom/gmodvr/flat/CustomButtons$Entry;->mode:Lcom/gmodvr/flat/CustomButtons$Mode;

    iget-object v4, v4, Lcom/gmodvr/flat/CustomButtons$Mode;->id:Ljava/lang/String;

    const-string v5, "mode"

    .line 80
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :catch_e9
    move-exception p0

    goto/16 :goto_16e

    .line 81
    :cond_ec
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The file contains an unsupported custom button shape or mode."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_f4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The file contains invalid custom button identifiers or slots."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_fc
    const-string v0, "layout"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gmodvr/flat/TouchLayoutTransfer;->importConfig(Ljava/lang/String;F)Lcom/gmodvr/flat/TouchLayout;

    move-result-object p1

    .line 84
    iget-object v0, p1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10c
    :goto_10c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_150

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/TouchLayout$Button;

    .line 85
    iget-object v2, v1, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    const-string v3, "custom_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 86
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/gmodvr/flat/TouchLayoutTransfer$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/gmodvr/flat/TouchLayoutTransfer$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/TouchLayout$Button;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_132

    goto :goto_10c

    .line 87
    :cond_132
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The file is missing a definition for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_150
    new-instance v0, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;

    invoke-direct {v0, p1, p0}, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;-><init>(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;)V

    return-object v0

    .line 72
    :cond_156
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The file contains invalid or duplicate custom buttons."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_15e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This file uses an unsupported custom button format."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_166
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This file is not a supported control layout export."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_16e
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_16e} :catch_e9

    .line 91
    :goto_16e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The selected control layout file is damaged or incomplete."

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 53
    :cond_176
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not open the selected layout."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static require(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-void

    .line 153
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "The selected control layout contains invalid settings."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static save(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutTransfer;->text(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    if-nez p5, :cond_10

    .line 162
    invoke-static {p0, p2}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_10
    invoke-static {p3}, Lcom/gmodvr/flat/TouchLayoutTransfer;->text(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 167
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result p1

    .line 168
    invoke-static {p3, p5}, Lcom/gmodvr/flat/CustomButtons;->save(Ljava/io/File;Ljava/util/List;)V

    .line 170
    :try_start_21
    invoke-static {p0, p2}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    if-eqz p1, :cond_2e

    .line 173
    :try_start_28
    invoke-static {p3, p4}, Lcom/gmodvr/flat/Storage;->atomicText(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_39

    :catch_2c
    move-exception p1

    goto :goto_36

    .line 174
    :cond_2e
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_2c

    goto :goto_39

    .line 175
    :goto_36
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 176
    :goto_39
    throw p0

    .line 166
    :cond_3a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Your custom buttons changed while this editor was open. Reopen it before importing."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_42
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The layout changed while this editor was open. Reopen it to load the latest controls."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static text(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_18

    :cond_16
    const-string v0, ""

    :goto_18
    return-object v0
.end method

###### Class com.gmodvr.flat.TouchLayoutTransfer.Imported (com.gmodvr.flat.TouchLayoutTransfer$Imported)
.class final Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;
.super Ljava/lang/Object;
.source "TouchLayoutTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/TouchLayoutTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Imported"
.end annotation


# instance fields
.field final custom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final layout:Lcom/gmodvr/flat/TouchLayout;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/TouchLayout;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;->layout:Lcom/gmodvr/flat/TouchLayout;

    .line 32
    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;->custom:Ljava/util/List;

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutTransfer$$ExternalSyntheticLambda1 (com.gmodvr.flat.TouchLayoutTransfer$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutTransfer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayout$Button;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayout$Button;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutTransfer$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/TouchLayout$Button;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutTransfer$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/TouchLayout$Button;

    check-cast p1, Lcom/gmodvr/flat/CustomButtons$Entry;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayoutTransfer;->$r8$lambda$0ao1F_bN8azqq4k2bWcPpy5Tl7Q(Lcom/gmodvr/flat/TouchLayout$Button;Lcom/gmodvr/flat/CustomButtons$Entry;)Z

    move-result p0

    return p0
.end method
