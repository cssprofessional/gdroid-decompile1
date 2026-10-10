###### Class io.ktor.client.plugins.HttpCallValidatorConfig (io.ktor.client.plugins.HttpCallValidatorConfig)
.class public final Lio/ktor/client/plugins/HttpCallValidatorConfig;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"


# instance fields
.field public expectSuccess:Z

.field public final responseExceptionHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/HandlerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final responseValidators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/statement/HttpResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/ktor/client/plugins/HttpCallValidatorConfig;->responseValidators:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/ktor/client/plugins/HttpCallValidatorConfig;->responseExceptionHandlers:Ljava/util/List;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lio/ktor/client/plugins/HttpCallValidatorConfig;->expectSuccess:Z

    return-void
.end method


# virtual methods
.method public final getExpectSuccess$ktor_client_core()Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lio/ktor/client/plugins/HttpCallValidatorConfig;->expectSuccess:Z

    return p0
.end method

.method public final getResponseExceptionHandlers$ktor_client_core()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/HandlerWrapper;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lio/ktor/client/plugins/HttpCallValidatorConfig;->responseExceptionHandlers:Ljava/util/List;

    return-object p0
.end method

.method public final getResponseValidators$ktor_client_core()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/statement/HttpResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lio/ktor/client/plugins/HttpCallValidatorConfig;->responseValidators:Ljava/util/List;

    return-object p0
.end method

.method public final setExpectSuccess$ktor_client_core(Z)V
    .registers 2

    .line 35
    iput-boolean p1, p0, Lio/ktor/client/plugins/HttpCallValidatorConfig;->expectSuccess:Z

    return-void
.end method

.method public final validateResponse(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lio/ktor/client/plugins/HttpCallValidatorConfig;->responseValidators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
