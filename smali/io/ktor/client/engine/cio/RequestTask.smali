###### Class io.ktor.client.engine.cio.RequestTask (io.ktor.client.engine.cio.RequestTask)
.class public final Lio/ktor/client/engine/cio/RequestTask;
.super Ljava/lang/Object;
.source "EngineTasks.kt"


# instance fields
.field public final context:Lkotlin/coroutines/CoroutineContext;

.field public final request:Lio/ktor/client/request/HttpRequestData;

.field public final response:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lio/ktor/client/request/HttpResponseData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestData;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/CoroutineContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestData;",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lio/ktor/client/request/HttpResponseData;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/ktor/client/engine/cio/RequestTask;->request:Lio/ktor/client/request/HttpRequestData;

    .line 17
    iput-object p2, p0, Lio/ktor/client/engine/cio/RequestTask;->response:Lkotlinx/coroutines/CompletableDeferred;

    .line 18
    iput-object p3, p0, Lio/ktor/client/engine/cio/RequestTask;->context:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/client/engine/cio/RequestTask;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/client/engine/cio/RequestTask;

    iget-object v1, p0, Lio/ktor/client/engine/cio/RequestTask;->request:Lio/ktor/client/request/HttpRequestData;

    iget-object v3, p1, Lio/ktor/client/engine/cio/RequestTask;->request:Lio/ktor/client/request/HttpRequestData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/ktor/client/engine/cio/RequestTask;->response:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v3, p1, Lio/ktor/client/engine/cio/RequestTask;->response:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lio/ktor/client/engine/cio/RequestTask;->context:Lkotlin/coroutines/CoroutineContext;

    iget-object p1, p1, Lio/ktor/client/engine/cio/RequestTask;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 18
    iget-object p0, p0, Lio/ktor/client/engine/cio/RequestTask;->context:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final getRequest()Lio/ktor/client/request/HttpRequestData;
    .registers 1

    .line 16
    iget-object p0, p0, Lio/ktor/client/engine/cio/RequestTask;->request:Lio/ktor/client/request/HttpRequestData;

    return-object p0
.end method

.method public final getResponse()Lkotlinx/coroutines/CompletableDeferred;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lio/ktor/client/request/HttpResponseData;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lio/ktor/client/engine/cio/RequestTask;->response:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/cio/RequestTask;->request:Lio/ktor/client/request/HttpRequestData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/client/engine/cio/RequestTask;->response:Lkotlinx/coroutines/CompletableDeferred;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/ktor/client/engine/cio/RequestTask;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestTask(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/client/engine/cio/RequestTask;->request:Lio/ktor/client/request/HttpRequestData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/client/engine/cio/RequestTask;->response:Lkotlinx/coroutines/CompletableDeferred;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/client/engine/cio/RequestTask;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
