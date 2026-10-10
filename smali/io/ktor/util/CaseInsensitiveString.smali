###### Class io.ktor.util.CaseInsensitiveString (io.ktor.util.CaseInsensitiveString)
.class public final Lio/ktor/util/CaseInsensitiveString;
.super Ljava/lang/Object;
.source "Text.kt"


# instance fields
.field public final content:Ljava/lang/String;

.field public final hash:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_20

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    mul-int/lit8 v2, v2, 0x1f

    .line 117
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 120
    :cond_20
    iput v2, p0, Lio/ktor/util/CaseInsensitiveString;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 124
    instance-of v0, p1, Lio/ktor/util/CaseInsensitiveString;

    if-eqz v0, :cond_7

    check-cast p1, Lio/ktor/util/CaseInsensitiveString;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    iget-object p1, p1, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    if-eqz p1, :cond_19

    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, p0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-ne p0, v1, :cond_19

    move v0, v1

    :cond_19
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .registers 1

    .line 111
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 126
    iget p0, p0, Lio/ktor/util/CaseInsensitiveString;->hash:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 128
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveString;->content:Ljava/lang/String;

    return-object p0
.end method
