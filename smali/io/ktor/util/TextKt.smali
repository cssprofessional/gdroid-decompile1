###### Class io.ktor.util.TextKt (io.ktor.util.TextKt)
.class public final Lio/ktor/util/TextKt;
.super Ljava/lang/Object;
.source "Text.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Text.kt\nio/ktor/util/TextKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,130:1\n158#2,6:131\n158#2,6:137\n*S KotlinDebug\n*F\n+ 1 Text.kt\nio/ktor/util/TextKt\n*L\n54#1:131,6\n79#1:137,6\n*E\n"
.end annotation


# direct methods
.method public static final caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lio/ktor/util/CaseInsensitiveString;

    invoke-direct {v0, p0}, Lio/ktor/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toLowerCasePreservingASCII(C)C
    .registers 2

    const/16 v0, 0x41

    if-gt v0, p0, :cond_c

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_c

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    goto :goto_17

    :cond_c
    if-ltz p0, :cond_13

    const/16 v0, 0x80

    if-ge p0, v0, :cond_13

    goto :goto_17

    .line 100
    :cond_13
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    :goto_17
    return p0
.end method

.method public static final toLowerCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1c

    .line 159
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 55
    invoke-static {v4}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCII(C)C

    move-result v5

    if-eq v5, v4, :cond_19

    goto :goto_1d

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    move v2, v3

    :goto_1d
    if-ne v2, v3, :cond_20

    return-object p0

    .line 63
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    invoke-virtual {v3, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    if-gt v2, v0, :cond_42

    .line 67
    :goto_32
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCII(C)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v2, v0, :cond_42

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 63
    :cond_42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
