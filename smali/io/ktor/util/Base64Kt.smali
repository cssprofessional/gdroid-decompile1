###### Class io.ktor.util.Base64Kt (io.ktor.util.Base64Kt)
.class public final Lio/ktor/util/Base64Kt;
.super Ljava/lang/Object;
.source "Base64.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBase64.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Base64.kt\nio/ktor/util/Base64Kt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,130:1\n126#1:134\n126#1:135\n129#1:149\n21#2,3:131\n21#2,2:137\n23#2:143\n21#2,2:144\n23#2:151\n1#3:136\n389#4,4:139\n13359#5,3:146\n13362#5:150\n*S KotlinDebug\n*F\n+ 1 Base64.kt\nio/ktor/util/Base64Kt\n*L\n53#1:134\n69#1:135\n115#1:149\n29#1:131,3\n99#1:137,2\n99#1:143\n108#1:144,2\n108#1:151\n100#1:139,4\n114#1:146,3\n114#1:150\n*E\n"
.end annotation


# static fields
.field public static final BASE64_INVERSE_ALPHABET:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v0, 0x100

    .line 16
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_17

    int-to-char v4, v2

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 17
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    const/16 v0, 0x2b

    .line 20
    aget v0, v1, v0

    const/16 v2, 0x2d

    aput v0, v1, v2

    const/16 v0, 0x2f

    .line 21
    aget v0, v1, v0

    const/16 v2, 0x5f

    aput v0, v1, v2

    .line 18
    sput-object v1, Lio/ktor/util/Base64Kt;->BASE64_INVERSE_ALPHABET:[I

    return-void
.end method

.method public static final encodeBase64([B)Ljava/lang/String;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [C

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_11
    add-int/lit8 v5, v3, 0x3

    .line 44
    array-length v6, p0

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    if-gt v5, v6, :cond_46

    .line 45
    aget-byte v6, p0, v3

    add-int/lit8 v8, v3, 0x1

    .line 46
    aget-byte v8, p0, v8

    add-int/lit8 v3, v3, 0x2

    .line 47
    aget-byte v3, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v6

    move v6, v1

    :goto_2f
    const/4 v8, -0x1

    if-ge v8, v6, :cond_44

    mul-int/lit8 v8, v6, 0x6

    shr-int v8, v3, v8

    and-int/lit8 v8, v8, 0x3f

    add-int/lit8 v9, v4, 0x1

    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v0, v4

    add-int/lit8 v6, v6, -0x1

    move v4, v9

    goto :goto_2f

    :cond_44
    move v3, v5

    goto :goto_11

    .line 57
    :cond_46
    array-length v5, p0

    sub-int/2addr v5, v3

    if-nez v5, :cond_4f

    .line 58
    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->concatToString([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    const/4 v6, 0x1

    if-ne v5, v6, :cond_59

    .line 61
    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    goto :goto_67

    .line 63
    :cond_59
    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v3, v6

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v8

    :goto_67
    rsub-int/lit8 v3, v5, 0x3

    mul-int/lit8 v3, v3, 0x8

    .line 66
    div-int/lit8 v3, v3, 0x6

    if-gt v3, v1, :cond_84

    :goto_6f
    mul-int/lit8 v5, v1, 0x6

    shr-int v5, p0, v5

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v6, v4, 0x1

    .line 126
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v4

    if-eq v1, v3, :cond_83

    add-int/lit8 v1, v1, -0x1

    move v4, v6

    goto :goto_6f

    :cond_83
    move v4, v6

    :cond_84
    move p0, v2

    :goto_85
    if-ge p0, v3, :cond_91

    add-int/lit8 v1, v4, 0x1

    const/16 v5, 0x3d

    .line 72
    aput-char v5, v0, v4

    add-int/lit8 p0, p0, 0x1

    move v4, v1

    goto :goto_85

    .line 74
    :cond_91
    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->concatToString([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
