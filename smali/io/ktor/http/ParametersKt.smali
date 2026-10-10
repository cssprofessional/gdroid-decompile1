###### Class io.ktor.http.ParametersKt (io.ktor.http.ParametersKt)
.class public final Lio/ktor/http/ParametersKt;
.super Ljava/lang/Object;
.source "Parameters.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Parameters.kt\nio/ktor/http/ParametersKt\n+ 2 Parameters.kt\nio/ktor/http/Parameters$Companion\n*L\n1#1,136:1\n31#2:137\n31#2:138\n*S KotlinDebug\n*F\n+ 1 Parameters.kt\nio/ktor/http/ParametersKt\n*L\n91#1:137\n113#1:138\n*E\n"
.end annotation


# direct methods
.method public static final ParametersBuilder(I)Lio/ktor/http/ParametersBuilder;
    .registers 2

    .line 39
    new-instance v0, Lio/ktor/http/ParametersBuilderImpl;

    invoke-direct {v0, p0}, Lio/ktor/http/ParametersBuilderImpl;-><init>(I)V

    return-object v0
.end method

.method public static synthetic ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_6

    const/16 p0, 0x8

    .line 39
    :cond_6
    invoke-static {p0}, Lio/ktor/http/ParametersKt;->ParametersBuilder(I)Lio/ktor/http/ParametersBuilder;

    move-result-object p0

    return-object p0
.end method
