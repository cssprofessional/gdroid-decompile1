###### Class io.ktor.http.parsing.AtLeastOne (io.ktor.http.parsing.AtLeastOne)
.class public final Lio/ktor/http/parsing/AtLeastOne;
.super Lio/ktor/http/parsing/Grammar;
.source "ParserDsl.kt"

# interfaces
.implements Lio/ktor/http/parsing/SimpleGrammar;


# instance fields
.field public final grammar:Lio/ktor/http/parsing/Grammar;


# direct methods
.method public constructor <init>(Lio/ktor/http/parsing/Grammar;)V
    .registers 3

    const-string v0, "grammar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lio/ktor/http/parsing/Grammar;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/http/parsing/AtLeastOne;->grammar:Lio/ktor/http/parsing/Grammar;

    return-void
.end method


# virtual methods
.method public getGrammar()Lio/ktor/http/parsing/Grammar;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/http/parsing/AtLeastOne;->grammar:Lio/ktor/http/parsing/Grammar;

    return-object p0
.end method
