###### Class io.ktor.util.CharsetKt (io.ktor.util.CharsetKt)
.class public final Lio/ktor/util/CharsetKt;
.super Ljava/lang/Object;
.source "Charset.kt"


# direct methods
.method public static final isLowerCase(C)Z
    .registers 2

    .line 12
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static final toCharArray(Ljava/lang/String;)[C
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_17

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    return-object v1
.end method
