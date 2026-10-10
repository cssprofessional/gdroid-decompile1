###### Class io.ktor.http.parsing.RangeGrammar (io.ktor.http.parsing.RangeGrammar)
.class public final Lio/ktor/http/parsing/RangeGrammar;
.super Lio/ktor/http/parsing/Grammar;
.source "ParserDsl.kt"


# instance fields
.field public final from:C

.field public final to:C


# direct methods
.method public constructor <init>(CC)V
    .registers 4

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lio/ktor/http/parsing/Grammar;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-char p1, p0, Lio/ktor/http/parsing/RangeGrammar;->from:C

    iput-char p2, p0, Lio/ktor/http/parsing/RangeGrammar;->to:C

    return-void
.end method


# virtual methods
.method public final getFrom()C
    .registers 1

    .line 19
    iget-char p0, p0, Lio/ktor/http/parsing/RangeGrammar;->from:C

    return p0
.end method

.method public final getTo()C
    .registers 1

    .line 19
    iget-char p0, p0, Lio/ktor/http/parsing/RangeGrammar;->to:C

    return p0
.end method
