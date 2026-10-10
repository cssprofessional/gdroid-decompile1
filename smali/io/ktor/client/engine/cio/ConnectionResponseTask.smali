###### Class io.ktor.client.engine.cio.ConnectionResponseTask (io.ktor.client.engine.cio.ConnectionResponseTask)
.class public final Lio/ktor/client/engine/cio/ConnectionResponseTask;
.super Ljava/lang/Object;
.source "EngineTasks.kt"


# instance fields
.field public final requestTime:Lio/ktor/util/date/GMTDate;

.field public final task:Lio/ktor/client/engine/cio/RequestTask;


# direct methods
.method public constructor <init>(Lio/ktor/util/date/GMTDate;Lio/ktor/client/engine/cio/RequestTask;)V
    .registers 4

    const-string v0, "requestTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->requestTime:Lio/ktor/util/date/GMTDate;

    .line 30
    iput-object p2, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->task:Lio/ktor/client/engine/cio/RequestTask;

    return-void
.end method


# virtual methods
.method public final component1()Lio/ktor/util/date/GMTDate;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->requestTime:Lio/ktor/util/date/GMTDate;

    return-object p0
.end method

.method public final component2()Lio/ktor/client/engine/cio/RequestTask;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->task:Lio/ktor/client/engine/cio/RequestTask;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/client/engine/cio/ConnectionResponseTask;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/client/engine/cio/ConnectionResponseTask;

    iget-object v1, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->requestTime:Lio/ktor/util/date/GMTDate;

    iget-object v3, p1, Lio/ktor/client/engine/cio/ConnectionResponseTask;->requestTime:Lio/ktor/util/date/GMTDate;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->task:Lio/ktor/client/engine/cio/RequestTask;

    iget-object p1, p1, Lio/ktor/client/engine/cio/ConnectionResponseTask;->task:Lio/ktor/client/engine/cio/RequestTask;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->requestTime:Lio/ktor/util/date/GMTDate;

    invoke-virtual {v0}, Lio/ktor/util/date/GMTDate;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->task:Lio/ktor/client/engine/cio/RequestTask;

    invoke-virtual {p0}, Lio/ktor/client/engine/cio/RequestTask;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionResponseTask(requestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->requestTime:Lio/ktor/util/date/GMTDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/client/engine/cio/ConnectionResponseTask;->task:Lio/ktor/client/engine/cio/RequestTask;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
