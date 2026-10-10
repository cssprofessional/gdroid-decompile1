###### Class okio.internal.ByteString (okio.internal.-ByteString)
.class public final Lokio/internal/-ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,342:1\n129#1,2:348\n131#1,9:351\n67#2:343\n73#2:344\n73#2:346\n73#2:347\n67#2:375\n73#2:387\n1#3:345\n1#3:350\n212#4,7:360\n122#4:367\n219#4,5:368\n122#4:373\n226#4:374\n228#4:376\n397#4,2:377\n122#4:379\n400#4,6:380\n127#4:386\n406#4:388\n122#4:389\n407#4,13:390\n122#4:403\n422#4:404\n122#4:405\n425#4:406\n230#4,3:407\n440#4,3:410\n122#4:413\n443#4:414\n127#4:415\n446#4,10:416\n127#4:426\n456#4:427\n122#4:428\n457#4,4:429\n127#4:433\n461#4:434\n122#4:435\n462#4,14:436\n122#4:450\n477#4,2:451\n122#4:453\n481#4:454\n122#4:455\n484#4:456\n234#4,3:457\n500#4,3:460\n122#4:463\n503#4:464\n127#4:465\n506#4,2:466\n127#4:468\n510#4,10:469\n127#4:479\n520#4:480\n122#4:481\n521#4,4:482\n127#4:486\n525#4:487\n122#4:488\n526#4,4:489\n127#4:493\n530#4:494\n122#4:495\n531#4,15:496\n122#4:511\n547#4,2:512\n122#4:514\n550#4,2:515\n122#4:517\n554#4:518\n122#4:519\n557#4:520\n241#4:521\n122#4:522\n242#4,5:523\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n*L\n308#1:348,2\n308#1:351,9\n65#1:343\n66#1:344\n256#1:346\n257#1:347\n327#1:375\n327#1:387\n308#1:350\n327#1:360,7\n332#1:367\n327#1:368,5\n332#1:373\n327#1:374\n327#1:376\n327#1:377,2\n332#1:379\n327#1:380,6\n327#1:386\n327#1:388\n332#1:389\n327#1:390,13\n332#1:403\n327#1:404\n332#1:405\n327#1:406\n327#1:407,3\n327#1:410,3\n332#1:413\n327#1:414\n327#1:415\n327#1:416,10\n327#1:426\n327#1:427\n332#1:428\n327#1:429,4\n327#1:433\n327#1:434\n332#1:435\n327#1:436,14\n332#1:450\n327#1:451,2\n332#1:453\n327#1:454\n332#1:455\n327#1:456\n327#1:457,3\n327#1:460,3\n332#1:463\n327#1:464\n327#1:465\n327#1:466,2\n327#1:468\n327#1:469,10\n327#1:479\n327#1:480\n332#1:481\n327#1:482,4\n327#1:486\n327#1:487\n332#1:488\n327#1:489,4\n327#1:493\n327#1:494\n332#1:495\n327#1:496,15\n332#1:511\n327#1:512,2\n332#1:514\n327#1:515,2\n332#1:517\n327#1:518\n332#1:519\n327#1:520\n327#1:521\n332#1:522\n327#1:523,5\n*E\n"
.end annotation


# static fields
.field public static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 58
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lokio/internal/-ByteString;->codePointIndexToCharIndex([BI)I

    move-result p0

    return p0
.end method

.method public static final codePointIndexToCharIndex([BI)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v3, 0x1

    .line 327
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_9
    if-ge v5, v4, :cond_1a9

    .line 214
    aget-byte v8, v0, v5

    const v9, 0xfffd

    const/16 v10, 0xa0

    const/16 v11, 0x7f

    const/16 v12, 0x20

    const/16 v13, 0xd

    const/16 v14, 0xa

    const/high16 v15, 0x10000

    const/16 v16, -0x1

    if-ltz v8, :cond_66

    add-int/lit8 v17, v7, 0x1

    if-ne v7, v1, :cond_25

    return v6

    :cond_25
    if-eq v8, v14, :cond_33

    if-eq v8, v13, :cond_33

    if-ltz v8, :cond_2e

    if-ge v8, v12, :cond_2e

    goto :goto_35

    :cond_2e
    if-gt v11, v8, :cond_33

    if-ge v8, v10, :cond_33

    goto :goto_35

    :cond_33
    if-ne v8, v9, :cond_36

    :goto_35
    return v16

    :cond_36
    if-ge v8, v15, :cond_3a

    move v7, v3

    goto :goto_3b

    :cond_3a
    const/4 v7, 0x2

    :goto_3b
    add-int/2addr v6, v7

    add-int/2addr v5, v3

    :goto_3d
    move/from16 v7, v17

    if-ge v5, v4, :cond_63

    .line 222
    aget-byte v8, v0, v5

    if-ltz v8, :cond_63

    add-int/2addr v5, v3

    add-int/lit8 v17, v7, 0x1

    if-ne v7, v1, :cond_4b

    return v6

    :cond_4b
    if-eq v8, v14, :cond_59

    if-eq v8, v13, :cond_59

    if-ltz v8, :cond_54

    if-ge v8, v12, :cond_54

    goto :goto_5b

    :cond_54
    if-gt v11, v8, :cond_59

    if-ge v8, v10, :cond_59

    goto :goto_5b

    :cond_59
    if-ne v8, v9, :cond_5c

    :goto_5b
    return v16

    :cond_5c
    if-ge v8, v15, :cond_60

    move v7, v3

    goto :goto_61

    :cond_60
    const/4 v7, 0x2

    :goto_61
    add-int/2addr v6, v7

    goto :goto_3d

    .line 223
    :cond_63
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_9

    :cond_66
    shr-int/lit8 v2, v8, 0x5

    const/4 v15, -0x2

    const/16 v9, 0x80

    if-ne v2, v15, :cond_b2

    add-int/lit8 v2, v5, 0x1

    if-gt v4, v2, :cond_75

    if-ne v7, v1, :cond_74

    return v6

    :cond_74
    return v16

    .line 404
    :cond_75
    aget-byte v2, v0, v2

    and-int/lit16 v15, v2, 0xc0

    if-ne v15, v9, :cond_ae

    xor-int/lit16 v2, v2, 0xf80

    shl-int/lit8 v8, v8, 0x6

    xor-int/2addr v2, v8

    if-ge v2, v9, :cond_86

    if-ne v7, v1, :cond_85

    return v6

    :cond_85
    return v16

    :cond_86
    add-int/lit8 v8, v7, 0x1

    if-ne v7, v1, :cond_8b

    return v6

    :cond_8b
    if-eq v2, v14, :cond_99

    if-eq v2, v13, :cond_99

    if-ltz v2, :cond_94

    if-ge v2, v12, :cond_94

    goto :goto_9e

    :cond_94
    if-gt v11, v2, :cond_99

    if-ge v2, v10, :cond_99

    goto :goto_9e

    :cond_99
    const v7, 0xfffd

    if-ne v2, v7, :cond_9f

    :goto_9e
    return v16

    :cond_9f
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_a5

    move v2, v3

    goto :goto_a6

    :cond_a5
    const/4 v2, 0x2

    :goto_a6
    add-int/2addr v6, v2

    .line 228
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x2

    add-int/2addr v5, v2

    :goto_ab
    move v7, v8

    goto/16 :goto_9

    :cond_ae
    if-ne v7, v1, :cond_b1

    return v6

    :cond_b1
    return v16

    :cond_b2
    const/4 v2, 0x2

    shr-int/lit8 v10, v8, 0x4

    const v11, 0xe000

    const v12, 0xd800

    if-ne v10, v15, :cond_121

    add-int/lit8 v10, v5, 0x2

    if-gt v4, v10, :cond_c5

    if-ne v7, v1, :cond_c4

    return v6

    :cond_c4
    return v16

    :cond_c5
    add-int/lit8 v2, v5, 0x1

    .line 454
    aget-byte v2, v0, v2

    and-int/lit16 v15, v2, 0xc0

    if-ne v15, v9, :cond_11d

    .line 459
    aget-byte v10, v0, v10

    and-int/lit16 v15, v10, 0xc0

    if-ne v15, v9, :cond_119

    const v9, -0x1e080

    xor-int/2addr v9, v10

    shl-int/lit8 v2, v2, 0x6

    xor-int/2addr v2, v9

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v2, v8

    const/16 v8, 0x800

    if-ge v2, v8, :cond_e5

    if-ne v7, v1, :cond_e4

    return v6

    :cond_e4
    return v16

    :cond_e5
    if-gt v12, v2, :cond_ed

    if-ge v2, v11, :cond_ed

    if-ne v7, v1, :cond_ec

    return v6

    :cond_ec
    return v16

    :cond_ed
    add-int/lit8 v8, v7, 0x1

    if-ne v7, v1, :cond_f2

    return v6

    :cond_f2
    if-eq v2, v14, :cond_106

    if-eq v2, v13, :cond_106

    if-ltz v2, :cond_fd

    const/16 v7, 0x20

    if-ge v2, v7, :cond_fd

    goto :goto_10b

    :cond_fd
    const/16 v7, 0x7f

    if-gt v7, v2, :cond_106

    const/16 v7, 0xa0

    if-ge v2, v7, :cond_106

    goto :goto_10b

    :cond_106
    const v7, 0xfffd

    if-ne v2, v7, :cond_10c

    :goto_10b
    return v16

    :cond_10c
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_112

    move v2, v3

    goto :goto_113

    :cond_112
    const/4 v2, 0x2

    :goto_113
    add-int/2addr v6, v2

    .line 232
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x3

    goto :goto_ab

    :cond_119
    if-ne v7, v1, :cond_11c

    return v6

    :cond_11c
    return v16

    :cond_11d
    if-ne v7, v1, :cond_120

    return v6

    :cond_120
    return v16

    :cond_121
    shr-int/lit8 v2, v8, 0x3

    if-ne v2, v15, :cond_1a5

    add-int/lit8 v2, v5, 0x3

    if-gt v4, v2, :cond_12d

    if-ne v7, v1, :cond_12c

    return v6

    :cond_12c
    return v16

    :cond_12d
    add-int/lit8 v10, v5, 0x1

    .line 518
    aget-byte v10, v0, v10

    and-int/lit16 v15, v10, 0xc0

    if-ne v15, v9, :cond_1a1

    const/4 v15, 0x2

    add-int/lit8 v17, v5, 0x2

    .line 523
    aget-byte v15, v0, v17

    and-int/lit16 v13, v15, 0xc0

    if-ne v13, v9, :cond_19d

    .line 528
    aget-byte v2, v0, v2

    and-int/lit16 v13, v2, 0xc0

    if-ne v13, v9, :cond_199

    const v9, 0x381f80

    xor-int/2addr v2, v9

    shl-int/lit8 v9, v15, 0x6

    xor-int/2addr v2, v9

    shl-int/lit8 v9, v10, 0xc

    xor-int/2addr v2, v9

    shl-int/lit8 v8, v8, 0x12

    xor-int/2addr v2, v8

    const v8, 0x10ffff

    if-le v2, v8, :cond_15a

    if-ne v7, v1, :cond_159

    return v6

    :cond_159
    return v16

    :cond_15a
    if-gt v12, v2, :cond_162

    if-ge v2, v11, :cond_162

    if-ne v7, v1, :cond_161

    return v6

    :cond_161
    return v16

    :cond_162
    const/high16 v8, 0x10000

    if-ge v2, v8, :cond_16a

    if-ne v7, v1, :cond_169

    return v6

    :cond_169
    return v16

    :cond_16a
    add-int/lit8 v8, v7, 0x1

    if-ne v7, v1, :cond_16f

    return v6

    :cond_16f
    if-eq v2, v14, :cond_185

    const/16 v7, 0xd

    if-eq v2, v7, :cond_185

    if-ltz v2, :cond_17c

    const/16 v7, 0x20

    if-ge v2, v7, :cond_17c

    goto :goto_18a

    :cond_17c
    const/16 v7, 0x7f

    if-gt v7, v2, :cond_185

    const/16 v7, 0xa0

    if-ge v2, v7, :cond_185

    goto :goto_18a

    :cond_185
    const v7, 0xfffd

    if-ne v2, v7, :cond_18b

    :goto_18a
    return v16

    :cond_18b
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_191

    move v2, v3

    goto :goto_192

    :cond_191
    const/4 v2, 0x2

    :goto_192
    add-int/2addr v6, v2

    .line 236
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_ab

    :cond_199
    if-ne v7, v1, :cond_19c

    return v6

    :cond_19c
    return v16

    :cond_19d
    if-ne v7, v1, :cond_1a0

    return v6

    :cond_1a0
    return v16

    :cond_1a1
    if-ne v7, v1, :cond_1a4

    return v6

    :cond_1a4
    return v16

    :cond_1a5
    if-ne v7, v1, :cond_1a8

    return v6

    :cond_1a8
    return v16

    :cond_1a9
    return v6
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .registers 1

    .line 57
    sget-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method
