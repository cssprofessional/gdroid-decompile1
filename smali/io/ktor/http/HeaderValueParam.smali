###### Class io.ktor.http.HeaderValueParam (io.ktor.http.HeaderValueParam)
.class public final Lio/ktor/http/HeaderValueParam;
.super Ljava/lang/Object;
.source "HttpHeaderValueParser.kt"


# instance fields
.field public final escapeValue:Z

.field public final name:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lio/ktor/http/HeaderValueParam;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/HeaderValueParam;->name:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/http/HeaderValueParam;->value:Ljava/lang/String;

    iput-boolean p3, p0, Lio/ktor/http/HeaderValueParam;->escapeValue:Z

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/HeaderValueParam;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/http/HeaderValueParam;->value:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 21
    instance-of v0, p1, Lio/ktor/http/HeaderValueParam;

    if-eqz v0, :cond_1c

    .line 22
    check-cast p1, Lio/ktor/http/HeaderValueParam;

    iget-object v0, p1, Lio/ktor/http/HeaderValueParam;->name:Ljava/lang/String;

    iget-object v1, p0, Lio/ktor/http/HeaderValueParam;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 23
    iget-object p1, p1, Lio/ktor/http/HeaderValueParam;->value:Ljava/lang/String;

    iget-object p0, p0, Lio/ktor/http/HeaderValueParam;->value:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    return v2
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lio/ktor/http/HeaderValueParam;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lio/ktor/http/HeaderValueParam;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 26
    iget-object v0, p0, Lio/ktor/http/HeaderValueParam;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toLowerCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v3, v0, 0x1f

    .line 27
    iget-object p0, p0, Lio/ktor/http/HeaderValueParam;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v3, p0

    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderValueParam(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/http/HeaderValueParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/http/HeaderValueParam;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", escapeValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lio/ktor/http/HeaderValueParam;->escapeValue:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
