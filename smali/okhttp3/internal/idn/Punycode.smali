###### Class okhttp3.internal.idn.Punycode (okhttp3.internal.idn.Punycode)
.class public final Lokhttp3/internal/idn/Punycode;
.super Ljava/lang/Object;
.source "Punycode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPunycode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Punycode.kt\nokhttp3/internal/idn/Punycode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,329:1\n2393#2,14:330\n*S KotlinDebug\n*F\n+ 1 Punycode.kt\nokhttp3/internal/idn/Punycode\n*L\n108#1:330,14\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/internal/idn/Punycode;

.field public static final PREFIX:Lokio/ByteString;

.field public static final PREFIX_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/idn/Punycode;

    invoke-direct {v0}, Lokhttp3/internal/idn/Punycode;-><init>()V

    sput-object v0, Lokhttp3/internal/idn/Punycode;->INSTANCE:Lokhttp3/internal/idn/Punycode;

    .line 35
    const-string v0, "xn--"

    sput-object v0, Lokhttp3/internal/idn/Punycode;->PREFIX_STRING:Ljava/lang/String;

    .line 36
    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v1, v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/idn/Punycode;->PREFIX:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adapt(IIZ)I
    .registers 4

    if-eqz p3, :cond_5

    .line 272
    div-int/lit16 p1, p1, 0x2bc

    goto :goto_7

    .line 273
    :cond_5
    div-int/lit8 p1, p1, 0x2

    .line 275
    :goto_7
    div-int p0, p1, p2

    add-int/2addr p1, p0

    const/4 p0, 0x0

    :goto_b
    const/16 p2, 0x1c7

    if-le p1, p2, :cond_14

    .line 278
    div-int/lit8 p1, p1, 0x23

    add-int/lit8 p0, p0, 0x24

    goto :goto_b

    :cond_14
    mul-int/lit8 p2, p1, 0x24

    add-int/lit8 p1, p1, 0x26

    .line 281
    div-int/2addr p2, p1

    add-int/2addr p0, p2

    return p0
.end method

.method public final codePoints(Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-ge p2, p3, :cond_40

    .line 301
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    invoke-static {v0}, Lkotlin/text/CharsKt__CharKt;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_36

    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_1a

    .line 305
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 306
    :goto_1b
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_34

    :cond_28
    and-int/lit16 p2, v0, 0x3ff

    shl-int/lit8 p2, p2, 0xa

    and-int/lit16 v0, v2, 0x3ff

    or-int/2addr p2, v0

    const/high16 v0, 0x10000

    add-int/2addr v0, p2

    move p2, v1

    goto :goto_36

    :cond_34
    :goto_34
    const/16 v0, 0x3f

    .line 314
    :cond_36
    :goto_36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 302
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_40
    return-object p0
.end method

.method public final decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 155
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_32

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v4, 0x2e

    const/4 v6, 0x0

    move-object v3, p1

    move v5, v2

    .line 158
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    move v3, v0

    .line 161
    :cond_20
    invoke-virtual {p0, p1, v2, v3, v1}, Lokhttp3/internal/idn/Punycode;->decodeLabel(Ljava/lang/String;IILokio/Buffer;)Z

    move-result v2

    if-nez v2, :cond_28

    const/4 p0, 0x0

    return-object p0

    :cond_28
    if-ge v3, v0, :cond_32

    const/16 v2, 0x2e

    .line 164
    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 v2, v3, 0x1

    goto :goto_f

    .line 171
    :cond_32
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final decodeLabel(Ljava/lang/String;IILokio/Buffer;)Z
    .registers 25

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 186
    sget-object v2, Lokhttp3/internal/idn/Punycode;->PREFIX_STRING:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsJVMKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_1c

    .line 187
    invoke-virtual {v9, v6, v7, v8}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    return v10

    :cond_1c
    add-int/lit8 v7, v7, 0x4

    .line 196
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x2d

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p3

    .line 200
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/16 v1, 0x3a

    const/16 v2, 0x30

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, 0x41

    const/16 v12, 0x61

    const/4 v13, 0x0

    if-lt v0, v7, :cond_65

    :goto_3f
    if-ge v7, v0, :cond_64

    add-int/lit8 v14, v7, 0x1

    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v12, v7, :cond_4c

    if-ge v7, v4, :cond_4c

    goto :goto_5a

    :cond_4c
    if-gt v5, v7, :cond_51

    if-ge v7, v3, :cond_51

    goto :goto_5a

    :cond_51
    if-gt v2, v7, :cond_56

    if-ge v7, v1, :cond_56

    goto :goto_5a

    :cond_56
    const/16 v15, 0x2d

    if-ne v7, v15, :cond_63

    .line 205
    :goto_5a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v7, v14

    goto :goto_3f

    :cond_63
    return v13

    :cond_64
    add-int/2addr v7, v10

    :cond_65
    const/16 v0, 0x80

    const/16 v14, 0x48

    move v15, v13

    :goto_6a
    if-ge v7, v8, :cond_135

    const/16 v10, 0x24

    const v1, 0x7fffffff

    .line 220
    invoke-static {v10, v1}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/ranges/RangesKt___RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v10

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v2

    if-lez v2, :cond_89

    if-le v10, v1, :cond_8d

    :cond_89
    if-gez v2, :cond_ee

    if-gt v1, v10, :cond_ee

    :cond_8d
    move/from16 v17, v15

    const/16 v18, 0x1

    :goto_91
    if-ne v7, v8, :cond_94

    return v13

    :cond_94
    add-int/lit8 v19, v7, 0x1

    .line 222
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v12, v7, :cond_a3

    if-ge v7, v4, :cond_a3

    add-int/lit8 v7, v7, -0x61

    :goto_a0
    move/from16 v3, v18

    goto :goto_b5

    :cond_a3
    if-gt v5, v7, :cond_aa

    if-ge v7, v3, :cond_aa

    add-int/lit8 v7, v7, -0x41

    goto :goto_a0

    :cond_aa
    const/16 v3, 0x30

    if-gt v3, v7, :cond_ed

    const/16 v3, 0x3a

    if-ge v7, v3, :cond_ed

    add-int/lit8 v7, v7, -0x16

    goto :goto_a0

    :goto_b5
    mul-int v18, v7, v3

    const v16, 0x7fffffff

    sub-int v4, v16, v18

    move/from16 v5, v17

    if-le v5, v4, :cond_c1

    return v13

    :cond_c1
    add-int v17, v5, v18

    if-gt v10, v14, :cond_c7

    const/4 v4, 0x1

    goto :goto_d0

    :cond_c7
    add-int/lit8 v4, v14, 0x1a

    if-lt v10, v4, :cond_ce

    const/16 v4, 0x1a

    goto :goto_d0

    :cond_ce
    sub-int v4, v10, v14

    :goto_d0
    if-lt v7, v4, :cond_ea

    rsub-int/lit8 v4, v4, 0x24

    const v5, 0x7fffffff

    .line 241
    div-int v7, v5, v4

    if-le v3, v7, :cond_dc

    return v13

    :cond_dc
    mul-int v18, v3, v4

    if-eq v10, v1, :cond_ea

    add-int/2addr v10, v2

    move/from16 v7, v19

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, 0x41

    goto :goto_91

    :cond_ea
    move/from16 v7, v19

    goto :goto_f0

    :cond_ed
    return v13

    :cond_ee
    move/from16 v17, v15

    :goto_f0
    sub-int v1, v17, v15

    .line 244
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move-object/from16 v4, p0

    if-nez v15, :cond_fe

    move v5, v3

    goto :goto_ff

    :cond_fe
    move v5, v13

    :goto_ff
    invoke-virtual {v4, v1, v2, v5}, Lokhttp3/internal/idn/Punycode;->adapt(IIZ)I

    move-result v14

    .line 245
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    div-int v1, v17, v1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_111

    return v13

    :cond_111
    add-int/2addr v0, v1

    .line 248
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    rem-int v1, v17, v1

    const v2, 0x10ffff

    if-le v0, v2, :cond_11f

    return v13

    .line 252
    :cond_11f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v1, 0x1

    move v10, v3

    const/16 v1, 0x3a

    const/16 v2, 0x30

    const/16 v3, 0x5b

    const/16 v4, 0x7b

    const/16 v5, 0x41

    goto/16 :goto_6a

    :cond_135
    move v3, v10

    .line 257
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 258
    invoke-virtual {v9, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_13a

    :cond_14e
    return v3
.end method

.method public final encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_32

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v4, 0x2e

    const/4 v6, 0x0

    move-object v3, p1

    move v5, v2

    .line 57
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    move v3, v0

    .line 60
    :cond_20
    invoke-virtual {p0, p1, v2, v3, v1}, Lokhttp3/internal/idn/Punycode;->encodeLabel(Ljava/lang/String;IILokio/Buffer;)Z

    move-result v2

    if-nez v2, :cond_28

    const/4 p0, 0x0

    return-object p0

    :cond_28
    if-ge v3, v0, :cond_32

    const/16 v2, 0x2e

    .line 66
    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 v2, v3, 0x1

    goto :goto_f

    .line 73
    :cond_32
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encodeLabel(Ljava/lang/String;IILokio/Buffer;)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 82
    invoke-virtual/range {p0 .. p3}, Lokhttp3/internal/idn/Punycode;->requiresEncode(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_15

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 83
    invoke-virtual {v1, v2, v4, v5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    return v3

    :cond_15
    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 87
    sget-object v6, Lokhttp3/internal/idn/Punycode;->PREFIX:Lokio/ByteString;

    invoke-virtual {v1, v6}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 89
    invoke-virtual/range {p0 .. p3}, Lokhttp3/internal/idn/Punycode;->codePoints(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_2a
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0x80

    if-eqz v7, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-ge v7, v8, :cond_2a

    .line 95
    invoke-virtual {v1, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_44
    if-lez v6, :cond_4b

    const/16 v4, 0x2d

    .line 101
    invoke-virtual {v1, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    :cond_4b
    const/16 v4, 0x48

    move v9, v5

    move v7, v6

    .line 107
    :goto_4f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_128

    .line 2393
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2394
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_122

    .line 2395
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 2396
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const v13, 0x7fffffff

    if-nez v12, :cond_6d

    goto :goto_91

    .line 2397
    :cond_6d
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-lt v12, v8, :cond_77

    goto :goto_78

    :cond_77
    move v12, v13

    .line 2399
    :cond_78
    :goto_78
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 2400
    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-lt v15, v8, :cond_86

    goto :goto_87

    :cond_86
    move v15, v13

    :goto_87
    if-le v12, v15, :cond_8b

    move-object v11, v14

    move v12, v15

    .line 2405
    :cond_8b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_78

    .line 108
    :goto_91
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v10

    sub-int v8, v10, v8

    add-int/lit8 v11, v7, 0x1

    mul-int/2addr v8, v11

    sub-int v11, v13, v8

    if-le v9, v11, :cond_a1

    return v5

    :cond_a1
    add-int/2addr v9, v8

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a6
    :goto_a6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-ge v11, v10, :cond_be

    if-ne v9, v13, :cond_bb

    return v5

    :cond_bb
    add-int/lit8 v9, v9, 0x1

    goto :goto_a6

    :cond_be
    if-ne v11, v10, :cond_a6

    const/16 v11, 0x24

    .line 123
    invoke-static {v11, v13}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/ranges/RangesKt___RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v11

    invoke-virtual {v11}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v12

    invoke-virtual {v11}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v14

    invoke-virtual {v11}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v11

    if-lez v11, :cond_da

    if-le v12, v14, :cond_de

    :cond_da
    if-gez v11, :cond_103

    if-gt v14, v12, :cond_103

    :cond_de
    move v15, v9

    :goto_df
    if-gt v12, v4, :cond_e3

    move v5, v3

    goto :goto_ec

    :cond_e3
    add-int/lit8 v5, v4, 0x1a

    if-lt v12, v5, :cond_ea

    const/16 v5, 0x1a

    goto :goto_ec

    :cond_ea
    sub-int v5, v12, v4

    :goto_ec
    if-lt v15, v5, :cond_104

    sub-int/2addr v15, v5

    rsub-int/lit8 v16, v5, 0x24

    .line 131
    rem-int v17, v15, v16

    add-int v5, v5, v17

    invoke-virtual {v0, v5}, Lokhttp3/internal/idn/Punycode;->getPunycodeDigit(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 132
    div-int v15, v15, v16

    if-eq v12, v14, :cond_104

    add-int/2addr v12, v11

    const/4 v5, 0x0

    goto :goto_df

    :cond_103
    move v15, v9

    .line 135
    :cond_104
    invoke-virtual {v0, v15}, Lokhttp3/internal/idn/Punycode;->getPunycodeDigit(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 v4, v7, 0x1

    if-ne v7, v6, :cond_111

    move v5, v3

    goto :goto_112

    :cond_111
    const/4 v5, 0x0

    .line 136
    :goto_112
    invoke-virtual {v0, v9, v4, v5}, Lokhttp3/internal/idn/Punycode;->adapt(IIZ)I

    move-result v5

    move v7, v4

    move v4, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_a6

    :cond_11b
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v10, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4f

    .line 2394
    :cond_122
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_128
    return v3
.end method

.method public final getPunycodeDigit(I)I
    .registers 4

    const/16 p0, 0x1a

    if-ge p1, p0, :cond_7

    add-int/lit8 p1, p1, 0x61

    goto :goto_d

    :cond_7
    const/16 p0, 0x24

    if-ge p1, p0, :cond_e

    add-int/lit8 p1, p1, 0x16

    :goto_d
    return p1

    .line 325
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected digit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requiresEncode(Ljava/lang/String;II)Z
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_f

    .line 289
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x80

    if-lt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method
