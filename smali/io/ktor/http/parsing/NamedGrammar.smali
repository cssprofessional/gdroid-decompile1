###### Class io.ktor.http.parsing.NamedGrammar (io.ktor.http.parsing.NamedGrammar)
.class public final Lio/ktor/http/parsing/NamedGrammar;
.super Lio/ktor/http/parsing/Grammar;
.source "ParserDsl.kt"


# instance fields
.field public final grammar:Lio/ktor/http/parsing/Grammar;

.field public final name:Ljava/lang/String;


# virtual methods
.method public final getGrammar()Lio/ktor/http/parsing/Grammar;
    .registers 1

    .line 22
    iget-object p0, p0, Lio/ktor/http/parsing/NamedGrammar;->grammar:Lio/ktor/http/parsing/Grammar;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lio/ktor/http/parsing/NamedGrammar;->name:Ljava/lang/String;

    return-object p0
.end method
