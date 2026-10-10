###### Class okhttp3.internal.url._UrlKt (okhttp3.internal.url._UrlKt)
.class public final Lokhttp3/internal/url/_UrlKt;
.super Ljava/lang/Object;
.source "-Url.kt"


# static fields
.field public static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 25
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lokhttp3/internal/url/_UrlKt;->HEX_DIGITS:[C

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static final canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 20

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeSet"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 207
    invoke-static/range {v1 .. v11}, Lokhttp3/internal/url/_UrlKt;->canonicalizeWithCharset$default(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic canonicalize$default(Ljava/lang/String;IILjava/lang/String;ZZZZILjava/lang/Object;)Ljava/lang/String;
    .registers 20

    and-int/lit8 v0, p8, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v3, v1

    goto :goto_8

    :cond_7
    move v3, p1

    :goto_8
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_12

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    goto :goto_13

    :cond_12
    move v4, p2

    :goto_13
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_19

    move v6, v1

    goto :goto_1a

    :cond_19
    move v6, p4

    :goto_1a
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_20

    move v7, v1

    goto :goto_21

    :cond_20
    move v7, p5

    :goto_21
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_27

    move v8, v1

    goto :goto_29

    :cond_27
    move/from16 v8, p6

    :goto_29
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2f

    move v9, v1

    goto :goto_31

    :cond_2f
    move/from16 v9, p7

    :goto_31
    move-object v2, p0

    move-object v5, p3

    .line 198
    invoke-static/range {v2 .. v9}, Lokhttp3/internal/url/_UrlKt;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final canonicalizeWithCharset(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 20

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeSet"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, p1

    :goto_e
    if-ge v2, v3, :cond_65

    .line 135
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v5, 0x20

    if-lt v0, v5, :cond_47

    const/16 v5, 0x7f

    if-eq v0, v5, :cond_47

    const/16 v5, 0x80

    if-lt v0, v5, :cond_22

    if-eqz p7, :cond_47

    :cond_22
    int-to-char v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 140
    invoke-static {p3, v5, v8, v6, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    const/16 v5, 0x25

    if-ne v0, v5, :cond_3a

    if-eqz p4, :cond_47

    if-eqz p5, :cond_3a

    .line 142
    invoke-static {p0, v2, p2}, Lokhttp3/internal/url/_UrlKt;->isPercentEncoded(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_47

    :cond_3a
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_41

    if-eqz p6, :cond_41

    goto :goto_47

    .line 162
    :cond_41
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_e

    .line 147
    :cond_47
    :goto_47
    new-instance v10, Lokio/Buffer;

    invoke-direct {v10}, Lokio/Buffer;-><init>()V

    move v0, p1

    .line 148
    invoke-virtual {v10, p0, p1, v2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-object v0, v10

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 149
    invoke-static/range {v0 .. v9}, Lokhttp3/internal/url/_UrlKt;->writeCanonicalized(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V

    .line 160
    invoke-virtual {v10}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_65
    move v0, p1

    .line 166
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic canonicalizeWithCharset$default(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .registers 23

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v4, v2

    goto :goto_a

    :cond_9
    move v4, p1

    :goto_a
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v1

    goto :goto_15

    :cond_14
    move v5, p2

    :goto_15
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1b

    move v7, v2

    goto :goto_1d

    :cond_1b
    move/from16 v7, p4

    :goto_1d
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_23

    move v8, v2

    goto :goto_25

    :cond_23
    move/from16 v8, p5

    :goto_25
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2b

    move v9, v2

    goto :goto_2d

    :cond_2b
    move/from16 v9, p6

    :goto_2d
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_33

    move v10, v2

    goto :goto_35

    :cond_33
    move/from16 v10, p7

    :goto_35
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_3e

    :cond_3c
    move-object/from16 v11, p8

    :goto_3e
    move-object v3, p0

    move-object v6, p3

    .line 122
    invoke-static/range {v3 .. v11}, Lokhttp3/internal/url/_UrlKt;->canonicalizeWithCharset(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isPercentEncoded(Ljava/lang/String;II)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_29

    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x25

    if-ne p2, v1, :cond_29

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 243
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lokhttp3/internal/_UtilCommonKt;->parseHexDigit(C)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_29

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->parseHexDigit(C)I

    move-result p0

    if-eq p0, v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    return p2
.end method

.method public static final percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p1

    :goto_6
    if-ge v0, p2, :cond_2a

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_17

    if-eqz p3, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 226
    :cond_1a
    :goto_1a
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 227
    invoke-virtual {v1, p0, p1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 228
    invoke-static {v1, p0, v0, p2, p3}, Lokhttp3/internal/url/_UrlKt;->writePercentDecoded(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 229
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 234
    :cond_2a
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic percentDecode$default(Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_e

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_e
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_13

    move p3, v0

    .line 217
    :cond_13
    invoke-static {p0, p1, p2, p3}, Lokhttp3/internal/url/_UrlKt;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final writeCanonicalized(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
    .registers 23

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p9

    const-string v5, "<this>"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "input"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "encodeSet"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move v6, p2

    move-object v7, v5

    :goto_1a
    if-ge v6, v2, :cond_c6

    .line 53
    invoke-virtual {p1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-eqz p5, :cond_36

    const/16 v9, 0x9

    if-eq v8, v9, :cond_32

    const/16 v9, 0xa

    if-eq v8, v9, :cond_32

    const/16 v9, 0xc

    if-eq v8, v9, :cond_32

    const/16 v9, 0xd

    if-ne v8, v9, :cond_36

    .line 59
    :cond_32
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_bf

    .line 63
    :cond_36
    const-string v9, "+"

    const/16 v10, 0x20

    if-ne v8, v10, :cond_45

    const-string v11, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    if-ne v3, v11, :cond_45

    .line 65
    invoke-virtual {p0, v9}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto/16 :goto_bf

    :cond_45
    const/16 v11, 0x2b

    if-ne v8, v11, :cond_55

    if-eqz p7, :cond_55

    if-eqz p5, :cond_4e

    goto :goto_50

    .line 68
    :cond_4e
    const-string v9, "%2B"

    :goto_50
    invoke-virtual {p0, v9}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto/16 :goto_bf

    :cond_55
    const/16 v9, 0x25

    if-lt v8, v10, :cond_7d

    const/16 v10, 0x7f

    if-eq v8, v10, :cond_7d

    const/16 v10, 0x80

    if-lt v8, v10, :cond_63

    if-eqz p8, :cond_7d

    :cond_63
    int-to-char v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x2

    .line 73
    invoke-static {v3, v10, v11, v12, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7d

    if-ne v8, v9, :cond_79

    if-eqz p5, :cond_7d

    if-eqz p6, :cond_79

    .line 75
    invoke-static {p1, v6, v2}, Lokhttp3/internal/url/_UrlKt;->isPercentEncoded(Ljava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_79

    goto :goto_7d

    .line 96
    :cond_79
    invoke-virtual {p0, v8}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_bf

    :cond_7d
    :goto_7d
    if-nez v7, :cond_84

    .line 79
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    :cond_84
    if-eqz v4, :cond_98

    .line 82
    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    goto :goto_98

    .line 85
    :cond_8f
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v7, p1, v6, v10, v4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    goto :goto_9b

    .line 83
    :cond_98
    :goto_98
    invoke-virtual {v7, v8}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 88
    :goto_9b
    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v10

    if-nez v10, :cond_bd

    .line 89
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    move-result v10

    and-int/lit16 v11, v10, 0xff

    .line 90
    invoke-virtual {p0, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 91
    sget-object v12, Lokhttp3/internal/url/_UrlKt;->HEX_DIGITS:[C

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v12, v11

    invoke-virtual {p0, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v10, v10, 0xf

    .line 92
    aget-char v10, v12, v10

    invoke-virtual {p0, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_9b

    :cond_bd
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 98
    :goto_bf
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v6, v8

    goto/16 :goto_1a

    :cond_c6
    return-void
.end method

.method public static final writePercentDecoded(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    if-ge p2, p3, :cond_52

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_3b

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_3b

    add-int/lit8 v2, p2, 0x1

    .line 180
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lokhttp3/internal/_UtilCommonKt;->parseHexDigit(C)I

    move-result v2

    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokhttp3/internal/_UtilCommonKt;->parseHexDigit(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_49

    if-eq v3, v4, :cond_49

    shl-int/lit8 p2, v2, 0x4

    add-int/2addr p2, v3

    .line 183
    invoke-virtual {p0, p2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 185
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p2, v1

    goto :goto_a

    :cond_3b
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_49

    if-eqz p4, :cond_49

    const/16 v0, 0x20

    .line 189
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 193
    :cond_49
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 194
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_a

    :cond_52
    return-void
.end method
