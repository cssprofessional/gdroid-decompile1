###### Class kotlin.text.HexExtensionsKt (kotlin.text.HexExtensionsKt)
.class public final Lkotlin/text/HexExtensionsKt;
.super Ljava/lang/Object;
.source "HexExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1237:1\n1186#1,7:1239\n1186#1,7:1246\n1186#1,7:1253\n1186#1,7:1260\n1186#1,7:1267\n1186#1,7:1274\n1186#1,7:1281\n1186#1,7:1288\n1197#1,5:1295\n1197#1,5:1300\n1186#1,7:1305\n1186#1,7:1312\n1197#1,5:1319\n1206#1,5:1324\n1#2:1238\n1188#3,3:1329\n1188#3,3:1332\n1188#3,3:1335\n1188#3,3:1338\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n450#1:1239,7\n482#1:1246,7\n486#1:1253,7\n489#1:1260,7\n529#1:1267,7\n532#1:1274,7\n537#1:1281,7\n542#1:1288,7\n549#1:1295,5\n550#1:1300,5\n1141#1:1305,7\n1143#1:1312,7\n1171#1:1319,5\n1179#1:1324,5\n42#1:1329,3\n43#1:1332,3\n54#1:1335,3\n55#1:1338,3\n*E\n"
.end annotation


# static fields
.field public static final BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

.field public static final BYTE_TO_UPPER_CASE_HEX_DIGITS:[I

.field public static final HEX_DIGITS_TO_DECIMAL:[I

.field public static final HEX_DIGITS_TO_LONG_DECIMAL:[J


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0x100

    .line 20
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const-string v4, "0123456789abcdef"

    if-ge v3, v0, :cond_1e

    shr-int/lit8 v5, v3, 0x4

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    and-int/lit8 v6, v3, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 20
    :cond_1e
    sput-object v1, Lkotlin/text/HexExtensionsKt;->BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

    .line 29
    new-array v1, v0, [I

    move v3, v2

    :goto_23
    const-string v5, "0123456789ABCDEF"

    if-ge v3, v0, :cond_3b

    shr-int/lit8 v6, v3, 0x4

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, v3, 0xf

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 29
    :cond_3b
    sput-object v1, Lkotlin/text/HexExtensionsKt;->BYTE_TO_UPPER_CASE_HEX_DIGITS:[I

    .line 41
    new-array v1, v0, [I

    move v3, v2

    :goto_40
    if-ge v3, v0, :cond_48

    const/4 v6, -0x1

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_48
    move v3, v2

    move v6, v3

    .line 1189
    :goto_4a
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_5c

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    .line 42
    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_4a

    :cond_5c
    move v3, v2

    move v6, v3

    .line 1189
    :goto_5e
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_70

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    .line 43
    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_5e

    .line 41
    :cond_70
    sput-object v1, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_DECIMAL:[I

    .line 53
    new-array v1, v0, [J

    move v3, v2

    :goto_75
    if-ge v3, v0, :cond_7e

    const-wide/16 v6, -0x1

    aput-wide v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_7e
    move v0, v2

    move v3, v0

    .line 1189
    :goto_80
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_93

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v3, 0x1

    int-to-long v8, v3

    .line 54
    aput-wide v8, v1, v6

    add-int/lit8 v0, v0, 0x1

    move v3, v7

    goto :goto_80

    :cond_93
    move v0, v2

    .line 1189
    :goto_94
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_a7

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    int-to-long v6, v0

    .line 55
    aput-wide v6, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_94

    .line 53
    :cond_a7
    sput-object v1, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    return-void
.end method

.method public static final checkFormatLength(J)I
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p0

    if-gtz v0, :cond_f

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_f

    long-to-int p0, p0

    return p0

    .line 336
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The resulting string length is too big: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/ULong;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getBYTE_TO_LOWER_CASE_HEX_DIGITS()[I
    .registers 1

    .line 20
    sget-object v0, Lkotlin/text/HexExtensionsKt;->BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

    return-object v0
.end method

.method public static final toCharArrayIfNotEmpty(Ljava/lang/String;[CI)I
    .registers 6

    .line 1087
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    .line 1090
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1d

    .line 1089
    :cond_17
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p1, p2

    .line 1092
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method public static final toHexString(ILkotlin/text/HexFormat;)Ljava/lang/String;
    .registers 16

    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x8

    const-string v5, "format"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    invoke-virtual {p1}, Lkotlin/text/HexFormat;->getUpperCase()Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "0123456789ABCDEF"

    goto :goto_16

    :cond_14
    const-string v5, "0123456789abcdef"

    .line 856
    :goto_16
    invoke-virtual {p1}, Lkotlin/text/HexFormat;->getNumber()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object p1

    .line 859
    invoke-virtual {p1}, Lkotlin/text/HexFormat$NumberHexFormat;->isDigitsOnlyAndNoPadding$kotlin_stdlib()Z

    move-result v6

    if-eqz v6, :cond_8e

    shr-int/lit8 v6, p0, 0x1c

    and-int/lit8 v6, v6, 0xf

    .line 862
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shr-int/lit8 v7, p0, 0x18

    and-int/lit8 v7, v7, 0xf

    .line 863
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    shr-int/lit8 v8, p0, 0x14

    and-int/lit8 v8, v8, 0xf

    .line 864
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    shr-int/lit8 v9, p0, 0x10

    and-int/lit8 v9, v9, 0xf

    .line 865
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    shr-int/lit8 v10, p0, 0xc

    and-int/lit8 v10, v10, 0xf

    .line 866
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    shr-int/lit8 v11, p0, 0x8

    and-int/lit8 v11, v11, 0xf

    .line 867
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    shr-int/lit8 v12, p0, 0x4

    and-int/lit8 v12, v12, 0xf

    .line 868
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    and-int/lit8 v13, p0, 0xf

    .line 869
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v4, v4, [C

    aput-char v6, v4, v2

    const/4 v6, 0x1

    aput-char v7, v4, v6

    aput-char v8, v4, v1

    const/4 v6, 0x3

    aput-char v9, v4, v6

    aput-char v10, v4, v3

    const/4 v3, 0x5

    aput-char v11, v4, v3

    const/4 v3, 0x6

    aput-char v12, v4, v3

    aput-char v5, v4, v0

    .line 870
    invoke-virtual {p1}, Lkotlin/text/HexFormat$NumberHexFormat;->getRemoveLeadingZeros()Z

    move-result p1

    if-eqz p1, :cond_89

    .line 871
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    shr-int/2addr p0, v1

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v4, p0, v2, v1, p1}, Lkotlin/text/StringsKt__StringsJVMKt;->concatToString$default([CIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    .line 873
    :cond_89
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->concatToString([C)Ljava/lang/String;

    move-result-object p0

    :goto_8d
    return-object p0

    :cond_8e
    int-to-long v0, p0

    const/16 p0, 0x20

    .line 876
    invoke-static {v0, v1, p1, v5, p0}, Lkotlin/text/HexExtensionsKt;->toHexStringImpl(JLkotlin/text/HexFormat$NumberHexFormat;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toHexString$default(ILkotlin/text/HexFormat;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    .line 854
    sget-object p1, Lkotlin/text/HexFormat;->Companion:Lkotlin/text/HexFormat$Companion;

    invoke-virtual {p1}, Lkotlin/text/HexFormat$Companion;->getDefault()Lkotlin/text/HexFormat;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lkotlin/text/HexExtensionsKt;->toHexString(ILkotlin/text/HexFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toHexStringImpl(JLkotlin/text/HexFormat$NumberHexFormat;Ljava/lang/String;I)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p3

    and-int/lit8 v1, p4, 0x3

    if-nez v1, :cond_7b

    shr-int/lit8 v1, p4, 0x2

    .line 1053
    invoke-virtual/range {p2 .. p2}, Lkotlin/text/HexFormat$NumberHexFormat;->getMinLength()I

    move-result v2

    sub-int v3, v2, v1

    const/4 v4, 0x0

    .line 1054
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 1056
    invoke-virtual/range {p2 .. p2}, Lkotlin/text/HexFormat$NumberHexFormat;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 1057
    invoke-virtual/range {p2 .. p2}, Lkotlin/text/HexFormat$NumberHexFormat;->getSuffix()Ljava/lang/String;

    move-result-object v6

    .line 1058
    invoke-virtual/range {p2 .. p2}, Lkotlin/text/HexFormat$NumberHexFormat;->getRemoveLeadingZeros()Z

    move-result v7

    .line 1060
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    int-to-long v10, v3

    add-long/2addr v8, v10

    int-to-long v10, v1

    add-long/2addr v8, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 1061
    invoke-static {v8, v9}, Lkotlin/text/HexExtensionsKt;->checkFormatLength(J)I

    move-result v8

    new-array v9, v8, [C

    .line 1063
    invoke-static {v5, v9, v4}, Lkotlin/text/HexExtensionsKt;->toCharArrayIfNotEmpty(Ljava/lang/String;[CI)I

    move-result v5

    if-lez v3, :cond_43

    .line 1066
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/2addr v3, v5

    invoke-static {v9, v10, v5, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([CCII)V

    move v5, v3

    :cond_43
    move/from16 v3, p4

    move v10, v4

    :goto_46
    const/4 v11, 0x1

    if-ge v10, v1, :cond_6a

    add-int/lit8 v3, v3, -0x4

    shr-long v12, p0, v3

    const-wide/16 v14, 0xf

    and-long/2addr v12, v14

    long-to-int v12, v12

    if-eqz v7, :cond_5b

    if-nez v12, :cond_5b

    shr-int/lit8 v7, v3, 0x2

    if-lt v7, v2, :cond_5b

    move v7, v11

    goto :goto_5c

    :cond_5b
    move v7, v4

    :goto_5c
    if-nez v7, :cond_67

    add-int/lit8 v11, v5, 0x1

    .line 1076
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v9, v5

    move v5, v11

    :cond_67
    add-int/lit8 v10, v10, 0x1

    goto :goto_46

    .line 1080
    :cond_6a
    invoke-static {v6, v9, v5}, Lkotlin/text/HexExtensionsKt;->toCharArrayIfNotEmpty(Ljava/lang/String;[CI)I

    move-result v0

    if-ne v0, v8, :cond_75

    .line 1082
    invoke-static {v9}, Lkotlin/text/StringsKt__StringsJVMKt;->concatToString([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_7a

    :cond_75
    const/4 v1, 0x0

    invoke-static {v9, v4, v0, v11, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->concatToString$default([CIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_7a
    return-object v0

    .line 1049
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
