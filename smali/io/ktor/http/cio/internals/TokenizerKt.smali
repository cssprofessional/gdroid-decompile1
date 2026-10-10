###### Class io.ktor.http.cio.internals.TokenizerKt (io.ktor.http.cio.internals.TokenizerKt)
.class public final Lio/ktor/http/cio/internals/TokenizerKt;
.super Ljava/lang/Object;
.source "Tokenizer.kt"


# direct methods
.method public static final findSpaceOrEnd(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)I
    .registers 4

    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v0

    .line 45
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result p1

    if-ge v0, p1, :cond_2d

    .line 47
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_2d

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_2d

    .line 51
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_2d
    :goto_2d
    return v0
.end method

.method public static final nextToken(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/CharSequence;
    .registers 4

    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/TokenizerKt;->findSpaceOrEnd(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)I

    move-result v0

    .line 9
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v1

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 10
    invoke-virtual {p1, v0}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    return-object p0
.end method

.method public static final skipSpaces(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)V
    .registers 5

    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v0

    .line 30
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 32
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_31

    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_2e

    .line 36
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_1f

    .line 40
    :cond_2e
    invoke-virtual {p1, v0}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    :cond_31
    :goto_31
    return-void
.end method

.method public static final skipSpacesAndHorizontalTabs(Lio/ktor/http/cio/internals/CharArrayBuilder;II)I
    .registers 5

    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    if-ge p1, p2, :cond_18

    .line 21
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->charAt(I)C

    move-result v0

    .line 22
    invoke-static {v0}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0x9

    if-ne v0, v1, :cond_18

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_18
    return p1
.end method
