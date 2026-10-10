###### Class io.ktor.http.QueryKt (io.ktor.http.QueryKt)
.class public final Lio/ktor/http/QueryKt;
.super Ljava/lang/Object;
.source "Query.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Query.kt\nio/ktor/http/QueryKt\n+ 2 Parameters.kt\nio/ktor/http/Parameters$Companion\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n31#2:125\n2746#3,3:126\n*S KotlinDebug\n*F\n+ 1 Query.kt\nio/ktor/http/QueryKt\n*L\n18#1:125\n106#1:126,3\n*E\n"
.end annotation


# direct methods
.method public static final appendParam(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIIZ)V
    .registers 15

    const/4 v0, -0x1

    .line 57
    const-string v1, "substring(...)"

    if-ne p3, v0, :cond_2b

    .line 58
    invoke-static {p2, p4, p1}, Lio/ktor/http/QueryKt;->trimStart(IILjava/lang/CharSequence;)I

    move-result v3

    .line 59
    invoke-static {v3, p4, p1}, Lio/ktor/http/QueryKt;->trimEnd(IILjava/lang/CharSequence;)I

    move-result v4

    if-le v4, v3, :cond_2a

    if-eqz p5, :cond_1c

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 63
    invoke-static/range {v2 .. v8}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    .line 64
    :cond_1c
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :goto_23
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lio/ktor/util/StringValuesBuilder;->appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V

    :cond_2a
    return-void

    .line 70
    :cond_2b
    invoke-static {p2, p3, p1}, Lio/ktor/http/QueryKt;->trimStart(IILjava/lang/CharSequence;)I

    move-result v3

    .line 71
    invoke-static {v3, p3, p1}, Lio/ktor/http/QueryKt;->trimEnd(IILjava/lang/CharSequence;)I

    move-result v4

    if-le v4, v3, :cond_6a

    if-eqz p5, :cond_42

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 74
    invoke-static/range {v2 .. v8}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_49

    .line 75
    :cond_42
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_49
    add-int/lit8 p3, p3, 0x1

    .line 78
    invoke-static {p3, p4, p1}, Lio/ktor/http/QueryKt;->trimStart(IILjava/lang/CharSequence;)I

    move-result v3

    .line 79
    invoke-static {v3, p4, p1}, Lio/ktor/http/QueryKt;->trimEnd(IILjava/lang/CharSequence;)I

    move-result v4

    if-eqz p5, :cond_60

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    .line 81
    invoke-static/range {v2 .. v8}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_67

    .line 82
    :cond_60
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :goto_67
    invoke-interface {p0, p2, p1}, Lio/ktor/util/StringValuesBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    return-void
.end method

.method public static final parse(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIZ)V
    .registers 22

    move/from16 v0, p3

    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move/from16 v4, p2

    if-gt v4, v1, :cond_3f

    move v10, v2

    move v7, v3

    move v2, v4

    move v6, v2

    :goto_10
    if-ne v10, v0, :cond_13

    return-void

    :cond_13
    move-object/from16 v12, p1

    .line 30
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x26

    if-eq v4, v5, :cond_26

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_22

    goto :goto_36

    :cond_22
    if-ne v7, v3, :cond_36

    move v7, v2

    goto :goto_36

    :cond_26
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v8, v2

    move/from16 v9, p4

    .line 32
    invoke-static/range {v4 .. v9}, Lio/ktor/http/QueryKt;->appendParam(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIIZ)V

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v10, v10, 0x1

    move v7, v3

    move v6, v4

    :cond_36
    :goto_36
    if-eq v2, v1, :cond_3b

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_3b
    move v13, v6

    move v14, v7

    move v2, v10

    goto :goto_43

    :cond_3f
    move-object/from16 v12, p1

    move v14, v3

    move v13, v4

    :goto_43
    if-ne v2, v0, :cond_46

    return-void

    .line 47
    :cond_46
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v16, p4

    invoke-static/range {v11 .. v16}, Lio/ktor/http/QueryKt;->appendParam(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public static final parseQueryString(Ljava/lang/String;IIZ)Lio/ktor/http/Parameters;
    .registers 7

    const-string v0, "query"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    if-le p1, v0, :cond_12

    .line 16
    sget-object p0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    invoke-virtual {p0}, Lio/ktor/http/Parameters$Companion;->getEmpty()Lio/ktor/http/Parameters;

    move-result-object p0

    goto :goto_22

    .line 18
    :cond_12
    sget-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-static {v2, v0, v1}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v0

    .line 18
    invoke-static {v0, p0, p1, p2, p3}, Lio/ktor/http/QueryKt;->parse(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIZ)V

    .line 31
    invoke-interface {v0}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object p0

    :goto_22
    return-object p0
.end method

.method public static synthetic parseQueryString$default(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/Parameters;
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_b

    const/16 p2, 0x3e8

    :cond_b
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_10

    const/4 p3, 0x1

    .line 14
    :cond_10
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/QueryKt;->parseQueryString(Ljava/lang/String;IIZ)Lio/ktor/http/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public static final trimEnd(IILjava/lang/CharSequence;)I
    .registers 4

    :goto_0
    if-le p1, p0, :cond_11

    add-int/lit8 v0, p1, -0x1

    .line 90
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_11
    return p1
.end method

.method public static final trimStart(IILjava/lang/CharSequence;)I
    .registers 4

    :goto_0
    if-ge p0, p1, :cond_f

    .line 96
    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_f
    return p0
.end method
