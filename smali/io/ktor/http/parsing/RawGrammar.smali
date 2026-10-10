###### Class io.ktor.http.parsing.RawGrammar (io.ktor.http.parsing.RawGrammar)
.class public final Lio/ktor/http/parsing/RawGrammar;
.super Lio/ktor/http/parsing/Grammar;
.source "ParserDsl.kt"


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lio/ktor/http/parsing/Grammar;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/http/parsing/RawGrammar;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lio/ktor/http/parsing/RawGrammar;->value:Ljava/lang/String;

    return-object p0
.end method
