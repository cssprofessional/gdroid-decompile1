###### Class okhttp3.internal._HostnamesCommonKt (okhttp3.internal._HostnamesCommonKt)
.class public final Lokhttp3/internal/_HostnamesCommonKt;
.super Ljava/lang/Object;
.source "-HostnamesCommon.kt"


# static fields
.field public static final VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    return-void
.end method

.method public static final canParseAsIpAddress(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final canonicalizeInetAddress([B)[B
    .registers 3

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {p0}, Lokhttp3/internal/_HostnamesCommonKt;->isMappedIpv4Address([B)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0xc

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    :cond_17
    return-object p0
.end method

.method public static final containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_35

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x1f

    .line 69
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    const/4 v9, 0x1

    if-lez v3, :cond_34

    const/16 v3, 0x7f

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-ltz v3, :cond_23

    goto :goto_34

    :cond_23
    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 75
    const-string v3, " #%/:?@[\\]"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    return v9

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_34
    :goto_34
    return v9

    :cond_35
    return v1
.end method

.method public static final containsInvalidLabelLengths(Ljava/lang/String;)Z
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_3b

    const/16 v2, 0xfe

    if-ge v0, v2, :cond_3b

    const/4 v0, 0x0

    move v8, v0

    :goto_12
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x2e

    const/4 v5, 0x0

    move-object v2, p0

    move v4, v8

    .line 48
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v8

    goto :goto_28

    :cond_26
    sub-int v4, v2, v8

    :goto_28
    if-gt v1, v4, :cond_3b

    const/16 v5, 0x40

    if-ge v4, v5, :cond_3b

    if-eq v2, v3, :cond_3a

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v2, v3, :cond_3a

    add-int/lit8 v8, v2, 0x1

    goto :goto_12

    :cond_3a
    return v0

    :cond_3b
    return v1
.end method

.method public static final decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 12

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p4

    :goto_b
    const/4 v1, 0x0

    if-ge p1, p2, :cond_56

    .line 166
    array-length v2, p3

    if-ne v0, v2, :cond_12

    return v1

    :cond_12
    if-eq v0, p4, :cond_1f

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    :cond_1f
    move v2, p1

    move v3, v1

    :goto_21
    if-ge v2, p2, :cond_49

    .line 178
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 179
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-ltz v6, :cond_49

    const/16 v6, 0x39

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-lez v6, :cond_38

    goto :goto_49

    :cond_38
    if-nez v3, :cond_3d

    if-eq p1, v2, :cond_3d

    return v1

    :cond_3d
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/16 v4, 0xff

    if-le v3, v4, :cond_46

    return v1

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_49
    :goto_49
    sub-int p1, v2, p1

    if-nez p1, :cond_4e

    return v1

    :cond_4e
    add-int/lit8 p1, v0, 0x1

    int-to-byte v1, v3

    .line 189
    aput-byte v1, p3, v0

    move v0, p1

    move p1, v2

    goto :goto_b

    :cond_56
    add-int/lit8 p4, p4, 0x4

    if-ne v0, p4, :cond_5b

    const/4 v1, 0x1

    :cond_5b
    return v1
.end method

.method public static final decodeIpv6(Ljava/lang/String;II)[B
    .registers 21

    move-object/from16 v6, p0

    move/from16 v7, p2

    const-string v0, "input"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x10

    .line 88
    new-array v9, v8, [B

    const/4 v11, -0x1

    move/from16 v12, p1

    move v14, v11

    move v15, v14

    const/4 v13, 0x0

    :goto_13
    const/16 v16, 0x0

    if-ge v12, v7, :cond_9b

    if-ne v13, v8, :cond_1a

    return-object v16

    :cond_1a
    add-int/lit8 v5, v12, 0x2

    if-gt v5, v7, :cond_3d

    const/4 v4, 0x4

    const/16 v17, 0x0

    .line 98
    const-string v1, "::"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v2, v12

    move v10, v5

    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eq v14, v11, :cond_33

    return-object v16

    :cond_33
    add-int/lit8 v13, v13, 0x2

    if-ne v10, v7, :cond_3a

    move v14, v13

    goto/16 :goto_9b

    :cond_3a
    move v15, v10

    move v14, v13

    goto :goto_6c

    :cond_3d
    if-eqz v13, :cond_4f

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 107
    const-string v1, ":"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v2, v12

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    add-int/lit8 v12, v12, 0x1

    :cond_4f
    move v15, v12

    goto :goto_6c

    :cond_51
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 109
    const-string v1, "."

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v2, v12

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    add-int/lit8 v0, v13, -0x2

    .line 111
    invoke-static {v6, v15, v7, v9, v0}, Lokhttp3/internal/_HostnamesCommonKt;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v0

    if-nez v0, :cond_68

    return-object v16

    :cond_68
    add-int/lit8 v13, v13, 0x2

    goto :goto_9b

    :cond_6b
    return-object v16

    :goto_6c
    move v12, v15

    const/4 v0, 0x0

    :goto_6e
    if-ge v12, v7, :cond_80

    .line 123
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lokhttp3/internal/_UtilCommonKt;->parseHexDigit(C)I

    move-result v1

    if-eq v1, v11, :cond_80

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_6e

    :cond_80
    sub-int v1, v12, v15

    if-eqz v1, :cond_9a

    const/4 v2, 0x4

    if-le v1, v2, :cond_88

    goto :goto_9a

    :cond_88
    add-int/lit8 v1, v13, 0x1

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 132
    aput-byte v2, v9, v13

    add-int/lit8 v13, v13, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 133
    aput-byte v0, v9, v1

    goto/16 :goto_13

    :cond_9a
    :goto_9a
    return-object v16

    :cond_9b
    :goto_9b
    if-eq v13, v8, :cond_ad

    if-ne v14, v11, :cond_a0

    return-object v16

    :cond_a0
    sub-int v0, v13, v14

    rsub-int/lit8 v0, v0, 0x10

    .line 147
    invoke-static {v9, v9, v0, v14, v13}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([B[BIII)[B

    sub-int/2addr v8, v13

    add-int/2addr v8, v14

    const/4 v0, 0x0

    .line 148
    invoke-static {v9, v0, v14, v8}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([BBII)V

    :cond_ad
    return-object v9
.end method

.method public static final idnToAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "host"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    .line 316
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 319
    :cond_13
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 320
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v1

    .line 321
    invoke-static {}, Lokhttp3/internal/idn/IdnaMappingTableInstanceKt;->getIDNA_MAPPING_TABLE()Lokhttp3/internal/idn/IdnaMappingTable;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lokhttp3/internal/idn/IdnaMappingTable;->map(ILokio/BufferedSink;)Z

    move-result v1

    if-nez v1, :cond_13

    return-object v2

    .line 325
    :cond_29
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/_NormalizeJvmKt;->normalizeNfc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 329
    sget-object v0, Lokhttp3/internal/idn/Punycode;->INSTANCE:Lokhttp3/internal/idn/Punycode;

    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/internal/idn/Punycode;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_41

    return-object v2

    .line 334
    :cond_41
    invoke-static {p0}, Lokhttp3/internal/_NormalizeJvmKt;->normalizeNfc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return-object v2

    .line 341
    :cond_4c
    invoke-virtual {v0, p0}, Lokhttp3/internal/idn/Punycode;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final inet4AddressToAscii([B)Ljava/lang/String;
    .registers 6

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_53

    .line 266
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    const/4 v1, 0x0

    .line 267
    aget-byte v1, p0, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    const/16 v1, 0x2e

    .line 268
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    const/4 v3, 0x1

    .line 269
    aget-byte v3, p0, v3

    invoke-static {v3, v2}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    const/4 v3, 0x2

    .line 271
    aget-byte v3, p0, v3

    invoke-static {v3, v2}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    const/4 v1, 0x3

    .line 273
    aget-byte p0, p0, v1

    invoke-static {p0, v2}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 265
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final inet6AddressToAscii([B)Ljava/lang/String;
    .registers 9

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 205
    :goto_9
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v2, v4, :cond_2a

    move v4, v2

    :goto_f
    if-ge v4, v5, :cond_1e

    .line 207
    aget-byte v6, p0, v4

    if-nez v6, :cond_1e

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_1e

    add-int/lit8 v4, v4, 0x2

    goto :goto_f

    :cond_1e
    sub-int v5, v4, v2

    if-le v5, v3, :cond_27

    const/4 v6, 0x4

    if-lt v5, v6, :cond_27

    move v0, v2

    move v3, v5

    :cond_27
    add-int/lit8 v2, v4, 0x2

    goto :goto_9

    .line 220
    :cond_2a
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 222
    :cond_2f
    :goto_2f
    array-length v4, p0

    if-ge v1, v4, :cond_5f

    const/16 v4, 0x3a

    if-ne v1, v0, :cond_40

    .line 224
    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/2addr v1, v3

    if-ne v1, v5, :cond_2f

    .line 226
    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2f

    :cond_40
    if-lez v1, :cond_45

    .line 228
    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 229
    :cond_45
    aget-byte v4, p0, v1

    const/16 v6, 0xff

    invoke-static {v4, v6}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    invoke-static {v7, v6}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    move-result v6

    or-int/2addr v4, v6

    int-to-long v6, v4

    .line 230
    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_2f

    .line 234
    :cond_5f
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isMappedIpv4Address([B)Z
    .registers 4

    .line 251
    array-length v0, p0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    :cond_7
    move v0, v2

    :goto_8
    const/16 v1, 0xa

    if-ge v0, v1, :cond_14

    .line 254
    aget-byte v1, p0, v0

    if-eqz v1, :cond_11

    return v2

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 257
    :cond_14
    aget-byte v0, p0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    return v2

    :cond_1a
    const/16 v0, 0xb

    .line 258
    aget-byte p0, p0, v0

    if-eq p0, v1, :cond_21

    return v2

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static final toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    const-string v0, ":"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 293
    const-string v0, "["

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "]"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, v1, v0}, Lokhttp3/internal/_HostnamesCommonKt;->decodeIpv6(Ljava/lang/String;II)[B

    move-result-object v0

    goto :goto_33

    .line 296
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v1, v0}, Lokhttp3/internal/_HostnamesCommonKt;->decodeIpv6(Ljava/lang/String;II)[B

    move-result-object v0

    :goto_33
    if-nez v0, :cond_36

    return-object v3

    .line 300
    :cond_36
    invoke-static {v0}, Lokhttp3/internal/_HostnamesCommonKt;->canonicalizeInetAddress([B)[B

    move-result-object v0

    .line 301
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_44

    invoke-static {v0}, Lokhttp3/internal/_HostnamesCommonKt;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 302
    :cond_44
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4d

    invoke-static {v0}, Lokhttp3/internal/_HostnamesCommonKt;->inet4AddressToAscii([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 303
    :cond_4d
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 306
    :cond_69
    invoke-static {p0}, Lokhttp3/internal/_HostnamesCommonKt;->idnToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_70

    return-object v3

    .line 307
    :cond_70
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_77

    return-object v3

    .line 308
    :cond_77
    invoke-static {p0}, Lokhttp3/internal/_HostnamesCommonKt;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    return-object v3

    .line 309
    :cond_7e
    invoke-static {p0}, Lokhttp3/internal/_HostnamesCommonKt;->containsInvalidLabelLengths(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    return-object v3

    :cond_85
    return-object p0
.end method
