###### Class kotlin.text.UStringsKt (kotlin.text.UStringsKt)
.class public final Lkotlin/text/UStringsKt;
.super Ljava/lang/Object;
.source "UStrings.kt"


# direct methods
.method public static final toUByteOrNull(Ljava/lang/String;)Lkotlin/UByte;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 117
    invoke-static {p0, v0}, Lkotlin/text/UStringsKt;->toUByteOrNull(Ljava/lang/String;I)Lkotlin/UByte;

    move-result-object p0

    return-object p0
.end method

.method public static final toUByteOrNull(Ljava/lang/String;I)Lkotlin/UByte;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p0, p1}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    move-result p0

    const/16 v0, 0xff

    .line 128
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-lez v0, :cond_1d

    return-object p1

    :cond_1d
    int-to-byte p0, p0

    .line 129
    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result p0

    invoke-static {p0}, Lkotlin/UByte;->box-impl(B)Lkotlin/UByte;

    move-result-object p0

    return-object p0

    :cond_27
    return-object p1
.end method

.method public static final toUIntOrNull(Ljava/lang/String;)Lkotlin/UInt;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 157
    invoke-static {p0, v0}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;

    move-result-object p0

    return-object p0
.end method

.method public static final toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    .line 176
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gez v4, :cond_25

    const/4 v4, 0x1

    if-eq v0, v4, :cond_24

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_26

    :cond_24
    return-object v1

    :cond_25
    move v4, v2

    .line 186
    :cond_26
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v3

    const v5, 0x71c71c7

    move v6, v5

    :goto_2e
    if-ge v4, v0, :cond_68

    .line 189
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v7

    if-gez v7, :cond_3b

    return-object v1

    .line 192
    :cond_3b
    invoke-static {v2, v6}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v8

    if-lez v8, :cond_4f

    if-ne v6, v5, :cond_4e

    const/4 v6, -0x1

    .line 194
    invoke-static {v6, v3}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result v6

    .line 196
    invoke-static {v2, v6}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v8

    if-lez v8, :cond_4f

    :cond_4e
    return-object v1

    :cond_4f
    mul-int/2addr v2, v3

    .line 204
    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    .line 207
    invoke-static {v7}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v7}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v7

    .line 208
    invoke-static {v7, v2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v2

    if-gez v2, :cond_64

    return-object v1

    :cond_64
    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_2e

    .line 211
    :cond_68
    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p0

    return-object p0
.end method

.method public static final toULongOrNull(Ljava/lang/String;)Lkotlin/ULong;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 219
    invoke-static {p0, v0}, Lkotlin/text/UStringsKt;->toULongOrNull(Ljava/lang/String;I)Lkotlin/ULong;

    move-result-object p0

    return-object p0
.end method

.method public static final toULongOrNull(Ljava/lang/String;I)Lkotlin/ULong;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    .line 231
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return-object v3

    :cond_14
    const/4 v4, 0x0

    .line 237
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 238
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gez v6, :cond_29

    const/4 v4, 0x1

    if-eq v2, v4, :cond_28

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_29

    :cond_28
    return-object v3

    :cond_29
    int-to-long v5, v1

    .line 249
    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    const-wide v7, 0x71c71c71c71c71cL

    const-wide/16 v9, 0x0

    move-wide v11, v7

    :goto_36
    if-ge v4, v2, :cond_7e

    .line 252
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13, v1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v13

    if-gez v13, :cond_43

    return-object v3

    .line 255
    :cond_43
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v14

    if-lez v14, :cond_5a

    cmp-long v11, v11, v7

    if-nez v11, :cond_59

    const-wide/16 v11, -0x1

    .line 257
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide v11

    .line 259
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v14

    if-lez v14, :cond_5a

    :cond_59
    return-object v3

    :cond_5a
    mul-long/2addr v9, v5

    .line 267
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    .line 270
    invoke-static {v13}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v13

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    .line 271
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v9

    if-gez v9, :cond_7a

    return-object v3

    :cond_7a
    add-int/lit8 v4, v4, 0x1

    move-wide v9, v13

    goto :goto_36

    .line 274
    :cond_7e
    invoke-static {v9, v10}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v0

    return-object v0
.end method

.method public static final toUShortOrNull(Ljava/lang/String;)Lkotlin/UShort;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 137
    invoke-static {p0, v0}, Lkotlin/text/UStringsKt;->toUShortOrNull(Ljava/lang/String;I)Lkotlin/UShort;

    move-result-object p0

    return-object p0
.end method

.method public static final toUShortOrNull(Ljava/lang/String;I)Lkotlin/UShort;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p0, p1}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    move-result p0

    const v0, 0xffff

    .line 148
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-lez v0, :cond_1e

    return-object p1

    :cond_1e
    int-to-short p0, p0

    .line 149
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    invoke-static {p0}, Lkotlin/UShort;->box-impl(S)Lkotlin/UShort;

    move-result-object p0

    return-object p0

    :cond_28
    return-object p1
.end method
