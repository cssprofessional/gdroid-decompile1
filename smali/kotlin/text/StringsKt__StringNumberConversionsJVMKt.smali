###### Class kotlin.text.StringsKt__StringNumberConversionsJVMKt (kotlin.text.StringsKt__StringNumberConversionsJVMKt)
.class public Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.super Lkotlin/text/StringsKt__StringBuilderKt;
.source "StringNumberConversionsJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringNumberConversionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,512:1\n267#1,7:513\n267#1,7:520\n267#1,7:527\n267#1,7:534\n1#2:541\n*S KotlinDebug\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n166#1:513,7\n173#1:520,7\n253#1:527,7\n264#1:534,7\n*E\n"
.end annotation


# direct methods
.method public static final isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z
    .registers 18

    move-object/from16 v0, p0

    .line 310
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    const/16 v5, 0x20

    if-gt v4, v1, :cond_17

    .line 313
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_17

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    if-le v4, v1, :cond_1a

    return v3

    :cond_1a
    :goto_1a
    if-le v1, v4, :cond_25

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_25

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 322
    :cond_25
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_35

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_37

    :cond_35
    add-int/lit8 v4, v4, 0x1

    :cond_37
    if-le v4, v1, :cond_3a

    return v3

    .line 329
    :cond_3a
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x2e

    const/16 v10, 0xa

    const/16 v11, 0x30

    const v12, 0xffff

    const/4 v13, -0x1

    if-ne v6, v11, :cond_b4

    add-int/lit8 v6, v4, 0x1

    if-le v6, v1, :cond_4f

    return v2

    .line 335
    :cond_4f
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/2addr v6, v5

    const/16 v14, 0x78

    if-ne v6, v14, :cond_b4

    add-int/lit8 v4, v4, 0x2

    move v6, v4

    :goto_5b
    const/4 v14, 0x6

    if-gt v6, v1, :cond_75

    .line 338
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v16, v15, -0x30

    and-int v7, v16, v12

    if-ge v7, v10, :cond_69

    goto :goto_70

    :cond_69
    or-int/lit8 v7, v15, 0x20

    add-int/lit8 v7, v7, -0x61

    and-int/2addr v7, v12

    if-ge v7, v14, :cond_75

    :goto_70
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x2d

    goto :goto_5b

    :cond_75
    if-eq v4, v6, :cond_79

    move v4, v2

    goto :goto_7a

    :cond_79
    move v4, v3

    :goto_7a
    if-le v6, v1, :cond_7e

    :goto_7c
    move v4, v13

    goto :goto_ac

    :cond_7e
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_a4

    add-int/lit8 v6, v6, 0x1

    move v7, v6

    :goto_87
    if-gt v7, v1, :cond_a0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v16, v15, -0x30

    and-int v8, v16, v12

    if-ge v8, v10, :cond_94

    goto :goto_9b

    :cond_94
    or-int/lit8 v8, v15, 0x20

    add-int/lit8 v8, v8, -0x61

    and-int/2addr v8, v12

    if-ge v8, v14, :cond_a0

    :goto_9b
    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x2b

    goto :goto_87

    :cond_a0
    if-eq v6, v7, :cond_a5

    move v6, v2

    goto :goto_a6

    :cond_a4
    move v7, v6

    :cond_a5
    move v6, v3

    :goto_a6
    if-nez v4, :cond_ab

    if-nez v6, :cond_ab

    goto :goto_7c

    :cond_ab
    move v4, v7

    :goto_ac
    if-eq v4, v13, :cond_b3

    if-le v4, v1, :cond_b1

    goto :goto_b3

    :cond_b1
    move v6, v2

    goto :goto_b5

    :cond_b3
    :goto_b3
    return v3

    :cond_b4
    move v6, v3

    :goto_b5
    if-nez v6, :cond_111

    move v7, v4

    :goto_b8
    if-gt v7, v1, :cond_c5

    .line 354
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v11

    and-int/2addr v8, v12

    if-ge v8, v10, :cond_c5

    add-int/lit8 v7, v7, 0x1

    goto :goto_b8

    :cond_c5
    if-eq v4, v7, :cond_c9

    move v4, v2

    goto :goto_ca

    :cond_c9
    move v4, v3

    :goto_ca
    if-le v7, v1, :cond_ce

    move v4, v7

    goto :goto_10b

    :cond_ce
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_e8

    add-int/lit8 v7, v7, 0x1

    move v8, v7

    :goto_d7
    if-gt v8, v1, :cond_e4

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v11

    and-int/2addr v9, v12

    if-ge v9, v10, :cond_e4

    add-int/lit8 v8, v8, 0x1

    goto :goto_d7

    :cond_e4
    if-eq v7, v8, :cond_e9

    move v7, v2

    goto :goto_ea

    :cond_e8
    move v8, v7

    :cond_e9
    move v7, v3

    :goto_ea
    if-nez v4, :cond_10a

    if-nez v7, :cond_10a

    add-int/lit8 v4, v8, 0x2

    if-ne v1, v4, :cond_f5

    const-string v4, "NaN"

    goto :goto_fd

    :cond_f5
    add-int/lit8 v4, v8, 0x7

    if-ne v1, v4, :cond_fc

    const-string v4, "Infinity"

    goto :goto_fd

    :cond_fc
    const/4 v4, 0x0

    :goto_fd
    if-nez v4, :cond_101

    :cond_ff
    move v4, v13

    goto :goto_10b

    :cond_101
    invoke-static {v0, v4, v8, v3}, Lkotlin/text/StringsKt__StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v4

    if-ne v4, v8, :cond_ff

    add-int/lit8 v4, v1, 0x1

    goto :goto_10b

    :cond_10a
    move v4, v8

    :goto_10b
    if-ne v4, v13, :cond_10e

    return v3

    :cond_10e
    if-le v4, v1, :cond_111

    return v2

    :cond_111
    add-int/lit8 v7, v4, 0x1

    .line 366
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    or-int/2addr v8, v5

    if-eqz v6, :cond_11d

    const/16 v9, 0x70

    goto :goto_11f

    :cond_11d
    const/16 v9, 0x65

    :goto_11f
    const/16 v13, 0x64

    const/16 v14, 0x66

    if-eq v8, v9, :cond_130

    if-nez v6, :cond_12e

    if-eq v8, v14, :cond_12b

    if-ne v8, v13, :cond_12e

    :cond_12b
    if-le v7, v1, :cond_12e

    goto :goto_12f

    :cond_12e
    move v2, v3

    :goto_12f
    return v2

    :cond_130
    if-le v7, v1, :cond_133

    return v3

    .line 378
    :cond_133
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_143

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2d

    if-ne v6, v8, :cond_148

    :cond_143
    add-int/lit8 v7, v4, 0x2

    if-le v7, v1, :cond_148

    return v3

    :cond_148
    :goto_148
    if-gt v7, v1, :cond_155

    .line 384
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v11

    and-int/2addr v4, v12

    if-ge v4, v10, :cond_155

    add-int/lit8 v7, v7, 0x1

    goto :goto_148

    :cond_155
    if-le v7, v1, :cond_158

    return v2

    :cond_158
    if-ne v7, v1, :cond_166

    .line 391
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/2addr v0, v5

    if-eq v0, v14, :cond_165

    if-ne v0, v13, :cond_164

    goto :goto_165

    :cond_164
    move v2, v3

    :cond_165
    :goto_165
    return v2

    :cond_166
    return v3
.end method

.method public static toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 268
    :try_start_6
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 173
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-object v0
.end method

.method public static toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 268
    :try_start_6
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 166
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-object v0
.end method
