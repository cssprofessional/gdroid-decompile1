###### Class kotlinx.io.internal._Utf8Kt (kotlinx.io.internal._Utf8Kt)
.class public final Lkotlinx/io/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "-Utf8.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nkotlinx/io/internal/_Utf8Kt\n+ 2 -Util.kt\nkotlinx/io/_UtilKt\n*L\n1#1,405:1\n111#1,17:406\n129#1:424\n252#1,9:425\n52#1:434\n261#1,13:436\n132#1,3:449\n288#1,4:452\n52#1:456\n294#1,10:457\n52#1:467\n304#1,5:468\n52#1:473\n309#1,23:474\n137#1,3:497\n347#1,3:500\n140#1,12:503\n350#1:515\n52#1:516\n353#1,2:517\n52#1:519\n357#1,10:520\n52#1:530\n367#1,5:531\n52#1:536\n372#1,5:537\n52#1:542\n377#1,28:543\n157#1,6:571\n252#1,9:579\n52#1:588\n261#1,13:590\n288#1,4:604\n52#1:608\n294#1,10:610\n52#1:620\n304#1,5:621\n52#1:626\n309#1,23:627\n347#1,4:651\n52#1:655\n353#1,2:657\n52#1:659\n357#1,10:660\n52#1:670\n367#1,5:671\n52#1:676\n372#1,5:677\n52#1:682\n377#1,28:683\n252#1,9:712\n52#1:721\n261#1,13:723\n288#1,4:737\n52#1:741\n294#1,10:743\n52#1:753\n304#1,5:754\n52#1:759\n309#1,23:760\n347#1,4:784\n52#1:788\n353#1,2:790\n52#1:792\n357#1,10:793\n52#1:803\n367#1,5:804\n52#1:809\n372#1,5:810\n52#1:815\n377#1,28:816\n52#1:844\n52#1:846\n52#1:848\n52#1:850\n52#1:852\n52#1:854\n52#1:856\n52#1:858\n52#1:860\n89#2:423\n95#2:435\n95#2:577\n89#2:578\n95#2:589\n89#2:603\n95#2:609\n89#2:650\n95#2:656\n89#2:711\n95#2:722\n89#2:736\n95#2:742\n89#2:783\n95#2:789\n95#2:845\n95#2:847\n95#2:849\n95#2:851\n95#2:853\n95#2:855\n95#2:857\n95#2:859\n95#2:861\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nkotlinx/io/internal/_Utf8Kt\n*L\n34#1:406,17\n34#1:424\n34#1:425,9\n34#1:434\n34#1:436,13\n34#1:449,3\n34#1:452,4\n34#1:456\n34#1:457,10\n34#1:467\n34#1:468,5\n34#1:473\n34#1:474,23\n34#1:497,3\n34#1:500,3\n34#1:503,12\n34#1:515\n34#1:516\n34#1:517,2\n34#1:519\n34#1:520,10\n34#1:530\n34#1:531,5\n34#1:536\n34#1:537,5\n34#1:542\n34#1:543,28\n34#1:571,6\n77#1:579,9\n77#1:588\n77#1:590,13\n82#1:604,4\n82#1:608\n82#1:610,10\n82#1:620\n82#1:621,5\n82#1:626\n82#1:627,23\n87#1:651,4\n87#1:655\n87#1:657,2\n87#1:659\n87#1:660,10\n87#1:670\n87#1:671,5\n87#1:676\n87#1:677,5\n87#1:682\n87#1:683,28\n129#1:712,9\n129#1:721\n129#1:723,13\n134#1:737,4\n134#1:741\n134#1:743,10\n134#1:753\n134#1:754,5\n134#1:759\n134#1:760,23\n139#1:784,4\n139#1:788\n139#1:790,2\n139#1:792\n139#1:793,10\n139#1:803\n139#1:804,5\n139#1:809\n139#1:810,5\n139#1:815\n139#1:816,28\n260#1:844\n291#1:846\n303#1:848\n308#1:850\n350#1:852\n354#1:854\n366#1:856\n371#1:858\n376#1:860\n34#1:423\n34#1:435\n52#1:577\n75#1:578\n77#1:589\n80#1:603\n82#1:609\n85#1:650\n87#1:656\n127#1:711\n129#1:722\n132#1:736\n134#1:742\n137#1:783\n139#1:789\n260#1:845\n291#1:847\n303#1:849\n308#1:851\n350#1:853\n354#1:855\n366#1:857\n371#1:859\n376#1:861\n*E\n"
.end annotation


# direct methods
.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "<this>"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v1, :cond_19a

    .line 28
    array-length v7, v0

    if-gt v2, v7, :cond_19a

    if-gt v1, v2, :cond_19a

    sub-int v7, v2, v1

    .line 31
    new-array v7, v7, [C

    const/4 v9, 0x0

    :goto_1b
    if-ge v1, v2, :cond_194

    .line 113
    aget-byte v10, v0, v1

    if-ltz v10, :cond_3a

    int-to-char v10, v10

    add-int/lit8 v11, v9, 0x1

    .line 35
    aput-char v10, v7, v9

    add-int/2addr v1, v6

    :goto_27
    if-ge v1, v2, :cond_35

    .line 122
    aget-byte v9, v0, v1

    if-ltz v9, :cond_35

    add-int/2addr v1, v6

    int-to-char v9, v9

    add-int/lit8 v10, v11, 0x1

    .line 35
    aput-char v9, v7, v11

    move v11, v10

    goto :goto_27

    .line 123
    :cond_35
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_37
    move v9, v11

    goto/16 :goto_190

    :cond_3a
    shr-int/lit8 v11, v10, 0x5

    const/4 v12, -0x2

    const/16 v13, 0x80

    const v14, 0xfffd

    if-ne v11, v12, :cond_76

    add-int/lit8 v11, v1, 0x1

    if-gt v2, v11, :cond_51

    int-to-char v10, v14

    add-int/lit8 v11, v9, 0x1

    .line 35
    aput-char v10, v7, v9

    .line 129
    :goto_4d
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v9, v6

    goto :goto_74

    .line 259
    :cond_51
    aget-byte v11, v0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v13, :cond_6e

    xor-int/lit16 v11, v11, 0xf80

    shl-int/lit8 v10, v10, 0x6

    xor-int/2addr v10, v11

    if-ge v10, v13, :cond_66

    int-to-char v10, v14

    add-int/lit8 v11, v9, 0x1

    .line 35
    aput-char v10, v7, v9

    .line 129
    :goto_63
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6c

    :cond_66
    int-to-char v10, v10

    add-int/lit8 v11, v9, 0x1

    .line 35
    aput-char v10, v7, v9

    goto :goto_63

    :goto_6c
    move v9, v5

    goto :goto_74

    :cond_6e
    int-to-char v10, v14

    add-int/lit8 v11, v9, 0x1

    aput-char v10, v7, v9

    goto :goto_4d

    :goto_74
    add-int/2addr v1, v9

    goto :goto_37

    :cond_76
    shr-int/lit8 v11, v10, 0x4

    const v15, 0xe000

    const v3, 0xd800

    if-ne v11, v12, :cond_e4

    add-int/lit8 v11, v1, 0x2

    if-gt v2, v11, :cond_99

    int-to-char v3, v14

    add-int/lit8 v10, v9, 0x1

    aput-char v3, v7, v9

    .line 134
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_97

    .line 291
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v13, :cond_97

    :goto_95
    move v3, v5

    goto :goto_e0

    :cond_97
    :goto_97
    move v3, v6

    goto :goto_e0

    :cond_99
    add-int/lit8 v12, v1, 0x1

    .line 302
    aget-byte v12, v0, v12

    and-int/lit16 v8, v12, 0xc0

    if-ne v8, v13, :cond_d8

    .line 307
    aget-byte v8, v0, v11

    and-int/lit16 v11, v8, 0xc0

    if-ne v11, v13, :cond_d0

    const v11, -0x1e080

    xor-int/2addr v8, v11

    shl-int/lit8 v11, v12, 0x6

    xor-int/2addr v8, v11

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v8, v10

    const/16 v10, 0x800

    if-ge v8, v10, :cond_be

    int-to-char v3, v14

    add-int/lit8 v8, v9, 0x1

    .line 35
    aput-char v3, v7, v9

    .line 134
    :goto_ba
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v10, v8

    goto :goto_ce

    :cond_be
    if-gt v3, v8, :cond_c8

    if-ge v8, v15, :cond_c8

    int-to-char v3, v14

    add-int/lit8 v8, v9, 0x1

    .line 35
    aput-char v3, v7, v9

    goto :goto_ba

    :cond_c8
    int-to-char v3, v8

    add-int/lit8 v8, v9, 0x1

    aput-char v3, v7, v9

    goto :goto_ba

    :goto_ce
    move v3, v4

    goto :goto_e0

    :cond_d0
    int-to-char v3, v14

    add-int/lit8 v10, v9, 0x1

    aput-char v3, v7, v9

    .line 134
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_95

    :cond_d8
    int-to-char v3, v14

    add-int/lit8 v10, v9, 0x1

    .line 35
    aput-char v3, v7, v9

    .line 134
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_97

    :goto_e0
    add-int/2addr v1, v3

    move v9, v10

    goto/16 :goto_190

    :cond_e4
    shr-int/lit8 v8, v10, 0x3

    if-ne v8, v12, :cond_18a

    add-int/lit8 v8, v1, 0x3

    if-gt v2, v8, :cond_10e

    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    .line 151
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v8, v1, 0x1

    if-le v2, v8, :cond_10b

    .line 350
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xc0

    if-ne v8, v13, :cond_10b

    add-int/lit8 v8, v1, 0x2

    if-le v2, v8, :cond_108

    .line 354
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xc0

    if-ne v8, v13, :cond_108

    goto/16 :goto_187

    :cond_108
    :goto_108
    move v4, v5

    goto/16 :goto_187

    :cond_10b
    :goto_10b
    move v4, v6

    goto/16 :goto_187

    :cond_10e
    add-int/lit8 v11, v1, 0x1

    .line 365
    aget-byte v11, v0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v13, :cond_180

    add-int/lit8 v12, v1, 0x2

    .line 370
    aget-byte v12, v0, v12

    and-int/lit16 v4, v12, 0xc0

    if-ne v4, v13, :cond_179

    .line 375
    aget-byte v4, v0, v8

    and-int/lit16 v8, v4, 0xc0

    if-ne v8, v13, :cond_171

    const v8, 0x381f80

    xor-int/2addr v4, v8

    shl-int/lit8 v8, v12, 0x6

    xor-int/2addr v4, v8

    shl-int/lit8 v8, v11, 0xc

    xor-int/2addr v4, v8

    shl-int/lit8 v8, v10, 0x12

    xor-int/2addr v4, v8

    const v8, 0x10ffff

    if-le v4, v8, :cond_13d

    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    .line 151
    :goto_13a
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_16f

    :cond_13d
    if-gt v3, v4, :cond_146

    if-ge v4, v15, :cond_146

    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    goto :goto_13a

    :cond_146
    const/high16 v3, 0x10000

    if-ge v4, v3, :cond_14f

    add-int/lit8 v3, v9, 0x1

    aput-char v14, v7, v9

    goto :goto_13a

    :cond_14f
    if-eq v4, v14, :cond_167

    ushr-int/lit8 v3, v4, 0xa

    const v8, 0xd7c0

    add-int/2addr v3, v8

    int-to-char v3, v3

    add-int/lit8 v8, v9, 0x1

    aput-char v3, v7, v9

    and-int/lit16 v3, v4, 0x3ff

    const v4, 0xdc00

    add-int/2addr v3, v4

    int-to-char v3, v3

    add-int/2addr v9, v5

    aput-char v3, v7, v8

    goto :goto_16c

    :cond_167
    add-int/lit8 v3, v9, 0x1

    aput-char v14, v7, v9

    move v9, v3

    .line 151
    :goto_16c
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v3, v9

    :goto_16f
    const/4 v4, 0x4

    goto :goto_187

    :cond_171
    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    .line 151
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x3

    goto :goto_187

    :cond_179
    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    .line 151
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_108

    :cond_180
    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    .line 151
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_10b

    :goto_187
    add-int/2addr v1, v4

    :goto_188
    move v9, v3

    goto :goto_190

    :cond_18a
    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    add-int/2addr v1, v6

    goto :goto_188

    :goto_190
    const/4 v3, 0x4

    const/4 v4, 0x3

    goto/16 :goto_1b

    :cond_194
    const/4 v1, 0x0

    .line 38
    invoke-static {v7, v1, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->concatToString([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_19a
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " beginIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " endIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    .line 27
    array-length p2, p0

    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/io/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
