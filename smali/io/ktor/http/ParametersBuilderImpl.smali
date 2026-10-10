###### Class io.ktor.http.ParametersBuilderImpl (io.ktor.http.ParametersBuilderImpl)
.class public final Lio/ktor/http/ParametersBuilderImpl;
.super Lio/ktor/util/StringValuesBuilderImpl;
.source "Parameters.kt"

# interfaces
.implements Lio/ktor/http/ParametersBuilder;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, v0, p1}, Lio/ktor/util/StringValuesBuilderImpl;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public build()Lio/ktor/http/Parameters;
    .registers 2

    .line 45
    new-instance v0, Lio/ktor/http/ParametersImpl;

    invoke-virtual {p0}, Lio/ktor/util/StringValuesBuilderImpl;->getValues()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/ktor/http/ParametersImpl;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
