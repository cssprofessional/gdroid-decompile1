###### Class io.ktor.util.pipeline.Pipeline (io.ktor.util.pipeline.Pipeline)
.class public Lio/ktor/util/pipeline/Pipeline;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSubject:",
        "Ljava/lang/Object;",
        "TContext:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipeline.kt\nio/ktor/util/pipeline/Pipeline\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,539:1\n1563#2:540\n1634#2,3:541\n1869#2,2:544\n808#2,11:546\n295#2,2:557\n1869#2,2:559\n*S KotlinDebug\n*F\n+ 1 Pipeline.kt\nio/ktor/util/pipeline/Pipeline\n*L\n60#1:540\n60#1:541,3\n83#1:544,2\n195#1:546,11\n196#1:557,2\n236#1:559,2\n*E\n"
.end annotation


# instance fields
.field public final attributes:Lio/ktor/util/Attributes;

.field public final developmentMode:Z

.field private volatile synthetic interceptors$delegate:Ljava/lang/Object;

.field public interceptorsListShared:Z

.field public interceptorsListSharedPhase:Lio/ktor/util/pipeline/PipelinePhase;

.field public interceptorsQuantity:I

.field public final phasesRaw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lio/ktor/util/pipeline/PipelinePhase;)V
    .registers 3

    const-string v0, "phases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    invoke-static {v0}, Lio/ktor/util/AttributesJvmKt;->Attributes(Z)Lio/ktor/util/Attributes;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/util/pipeline/Pipeline;->attributes:Lio/ktor/util/Attributes;

    .line 50
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptors$delegate:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public afterIntercepted()V
    .registers 1

    .line 0
    return-void
.end method

.method public final cacheInterceptors()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;TTSubject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 343
    iget v0, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsQuantity:I

    if-nez v0, :cond_10

    .line 345
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/util/pipeline/Pipeline;->notSharedInterceptorsList(Ljava/util/List;)V

    .line 346
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 349
    :cond_10
    iget-object v1, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_40

    .line 351
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_40

    move v4, v3

    .line 354
    :goto_1e
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lio/ktor/util/pipeline/PhaseContent;

    if-eqz v6, :cond_29

    check-cast v5, Lio/ktor/util/pipeline/PhaseContent;

    goto :goto_2a

    :cond_29
    move-object v5, v2

    :goto_2a
    if-nez v5, :cond_2d

    goto :goto_3b

    .line 356
    :cond_2d
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PhaseContent;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 358
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PhaseContent;->sharedInterceptors()Ljava/util/List;

    move-result-object v0

    .line 359
    invoke-virtual {p0, v5}, Lio/ktor/util/pipeline/Pipeline;->setInterceptorsListFromPhase(Lio/ktor/util/pipeline/PhaseContent;)V

    return-object v0

    :cond_3b
    :goto_3b
    if-eq v4, v0, :cond_40

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 364
    :cond_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-ltz v4, :cond_62

    .line 367
    :goto_4b
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lio/ktor/util/pipeline/PhaseContent;

    if-eqz v6, :cond_56

    check-cast v5, Lio/ktor/util/pipeline/PhaseContent;

    goto :goto_57

    :cond_56
    move-object v5, v2

    :goto_57
    if-nez v5, :cond_5a

    goto :goto_5d

    .line 369
    :cond_5a
    invoke-virtual {v5, v0}, Lio/ktor/util/pipeline/PhaseContent;->addTo(Ljava/util/List;)V

    :goto_5d
    if-eq v3, v4, :cond_62

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 372
    :cond_62
    invoke-virtual {p0, v0}, Lio/ktor/util/pipeline/Pipeline;->notSharedInterceptorsList(Ljava/util/List;)V

    return-object v0
.end method

.method public final createContext(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/util/pipeline/PipelineContext;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContext;TTSubject;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->sharedInterceptorsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->getDevelopmentMode()Z

    move-result p0

    invoke-static {p1, v0, p2, p3, p0}, Lio/ktor/util/pipeline/PipelineContextKt;->pipelineContextFor(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Z)Lio/ktor/util/pipeline/PipelineContext;

    move-result-object p0

    return-object p0
.end method

.method public final execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContext;TTSubject;",
            "Lkotlin/coroutines/Continuation<",
            "-TTSubject;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/ktor/util/pipeline/Pipeline;->createContext(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/util/pipeline/PipelineContext;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lio/ktor/util/pipeline/PipelineContext;->execute$ktor_utils(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final findPhase(Lio/ktor/util/pipeline/PipelinePhase;)Lio/ktor/util/pipeline/PhaseContent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelinePhase;",
            ")",
            "Lio/ktor/util/pipeline/PhaseContent<",
            "TTSubject;TTContext;>;"
        }
    .end annotation

    .line 299
    iget-object p0, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    .line 301
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2a

    .line 302
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1a

    .line 304
    new-instance v0, Lio/ktor/util/pipeline/PhaseContent;

    sget-object v2, Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;->INSTANCE:Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;

    invoke-direct {v0, p1, v2}, Lio/ktor/util/pipeline/PhaseContent;-><init>(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhaseRelation;)V

    .line 305
    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 309
    :cond_1a
    instance-of v3, v2, Lio/ktor/util/pipeline/PhaseContent;

    if-eqz v3, :cond_27

    check-cast v2, Lio/ktor/util/pipeline/PhaseContent;

    invoke-virtual {v2}, Lio/ktor/util/pipeline/PhaseContent;->getPhase()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v3

    if-ne v3, p1, :cond_27

    return-object v2

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findPhaseIndex(Lio/ktor/util/pipeline/PipelinePhase;)I
    .registers 6

    .line 319
    iget-object p0, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    .line 320
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 321
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1f

    .line 322
    instance-of v3, v2, Lio/ktor/util/pipeline/PhaseContent;

    if-eqz v3, :cond_1c

    check-cast v2, Lio/ktor/util/pipeline/PhaseContent;

    invoke-virtual {v2}, Lio/ktor/util/pipeline/PhaseContent;->getPhase()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v2

    if-ne v2, p1, :cond_1c

    goto :goto_1f

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    const/4 p0, -0x1

    return p0
.end method

.method public getDevelopmentMode()Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lio/ktor/util/pipeline/Pipeline;->developmentMode:Z

    return p0
.end method

.method public final getInterceptors()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;TTSubject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lio/ktor/util/pipeline/Pipeline;->interceptors$delegate:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final hasPhase(Lio/ktor/util/pipeline/PipelinePhase;)Z
    .registers 7

    .line 331
    iget-object p0, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    .line 332
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_22

    .line 333
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_20

    .line 334
    instance-of v4, v3, Lio/ktor/util/pipeline/PhaseContent;

    if-eqz v4, :cond_1d

    check-cast v3, Lio/ktor/util/pipeline/PhaseContent;

    invoke-virtual {v3}, Lio/ktor/util/pipeline/PhaseContent;->getPhase()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v3

    if-ne v3, p1, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_20
    :goto_20
    const/4 p0, 0x1

    return p0

    :cond_22
    return v1
.end method

.method public final insertPhaseAfter(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhase;)V
    .registers 9

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p2}, Lio/ktor/util/pipeline/Pipeline;->hasPhase(Lio/ktor/util/pipeline/PipelinePhase;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 123
    :cond_11
    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/Pipeline;->findPhaseIndex(Lio/ktor/util/pipeline/PipelinePhase;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_68

    add-int/lit8 v1, v0, 0x1

    .line 129
    iget-object v2, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-gt v1, v2, :cond_56

    .line 130
    :goto_22
    iget-object v3, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lio/ktor/util/pipeline/PhaseContent;

    const/4 v5, 0x0

    if-eqz v4, :cond_30

    check-cast v3, Lio/ktor/util/pipeline/PhaseContent;

    goto :goto_31

    :cond_30
    move-object v3, v5

    :goto_31
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Lio/ktor/util/pipeline/PhaseContent;->getRelation()Lio/ktor/util/pipeline/PipelinePhaseRelation;

    move-result-object v3

    if-nez v3, :cond_3a

    goto :goto_56

    .line 131
    :cond_3a
    instance-of v4, v3, Lio/ktor/util/pipeline/PipelinePhaseRelation$After;

    if-eqz v4, :cond_41

    move-object v5, v3

    check-cast v5, Lio/ktor/util/pipeline/PipelinePhaseRelation$After;

    :cond_41
    if-eqz v5, :cond_51

    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelinePhaseRelation$After;->getRelativeTo()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v3

    if-nez v3, :cond_4a

    goto :goto_51

    .line 132
    :cond_4a
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    move v0, v1

    :cond_51
    :goto_51
    if-eq v1, v2, :cond_56

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 135
    :cond_56
    :goto_56
    iget-object p0, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    .line 137
    new-instance v1, Lio/ktor/util/pipeline/PhaseContent;

    new-instance v2, Lio/ktor/util/pipeline/PipelinePhaseRelation$After;

    invoke-direct {v2, p1}, Lio/ktor/util/pipeline/PipelinePhaseRelation$After;-><init>(Lio/ktor/util/pipeline/PipelinePhase;)V

    invoke-direct {v1, p2, v2}, Lio/ktor/util/pipeline/PhaseContent;-><init>(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhaseRelation;)V

    .line 135
    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 125
    :cond_68
    new-instance p0, Lio/ktor/util/pipeline/InvalidPhaseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Phase "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not registered for this pipeline"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/InvalidPhaseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final insertPhaseBefore(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhase;)V
    .registers 6

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p2}, Lio/ktor/util/pipeline/Pipeline;->hasPhase(Lio/ktor/util/pipeline/PipelinePhase;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 156
    :cond_11
    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/Pipeline;->findPhaseIndex(Lio/ktor/util/pipeline/PipelinePhase;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 161
    iget-object p0, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    new-instance v1, Lio/ktor/util/pipeline/PhaseContent;

    new-instance v2, Lio/ktor/util/pipeline/PipelinePhaseRelation$Before;

    invoke-direct {v2, p1}, Lio/ktor/util/pipeline/PipelinePhaseRelation$Before;-><init>(Lio/ktor/util/pipeline/PipelinePhase;)V

    invoke-direct {v1, p2, v2}, Lio/ktor/util/pipeline/PhaseContent;-><init>(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhaseRelation;)V

    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 158
    :cond_28
    new-instance p0, Lio/ktor/util/pipeline/InvalidPhaseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Phase "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not registered for this pipeline"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/InvalidPhaseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelinePhase;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "phase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/Pipeline;->findPhase(Lio/ktor/util/pipeline/PipelinePhase;)Lio/ktor/util/pipeline/PhaseContent;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 173
    invoke-virtual {p0, p1, p2}, Lio/ktor/util/pipeline/Pipeline;->tryAddToPhaseFastPath(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 174
    iget p1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsQuantity:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsQuantity:I

    return-void

    .line 178
    :cond_1d
    invoke-virtual {v0, p2}, Lio/ktor/util/pipeline/PhaseContent;->addInterceptor(Lkotlin/jvm/functions/Function3;)V

    .line 179
    iget p1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsQuantity:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsQuantity:I

    .line 180
    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->resetInterceptorsList()V

    .line 182
    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->afterIntercepted()V

    return-void

    .line 171
    :cond_2d
    new-instance p0, Lio/ktor/util/pipeline/InvalidPhaseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Phase "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not registered for this pipeline"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/InvalidPhaseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final notSharedInterceptorsList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 432
    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/Pipeline;->setInterceptors(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 433
    iput-boolean p1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsListShared:Z

    const/4 p1, 0x0

    .line 434
    iput-object p1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsListSharedPhase:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public final resetInterceptorsList()V
    .registers 3

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v0}, Lio/ktor/util/pipeline/Pipeline;->setInterceptors(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 427
    iput-boolean v1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsListShared:Z

    .line 428
    iput-object v0, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsListSharedPhase:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public final setInterceptors(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptors$delegate:Ljava/lang/Object;

    return-void
.end method

.method public final setInterceptorsListFromPhase(Lio/ktor/util/pipeline/PhaseContent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PhaseContent<",
            "TTSubject;TTContext;>;)V"
        }
    .end annotation

    .line 438
    invoke-virtual {p1}, Lio/ktor/util/pipeline/PhaseContent;->sharedInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/util/pipeline/Pipeline;->setInterceptors(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 439
    iput-boolean v0, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsListShared:Z

    .line 440
    invoke-virtual {p1}, Lio/ktor/util/pipeline/PhaseContent;->getPhase()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsListSharedPhase:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public final sharedInterceptorsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;TTSubject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->getInterceptors()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    .line 418
    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->cacheInterceptors()Ljava/util/List;

    :cond_9
    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsListShared:Z

    .line 422
    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->getInterceptors()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 278
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryAddToPhaseFastPath(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelinePhase;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->getInterceptors()Ljava/util/List;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_50

    if-nez v0, :cond_10

    goto :goto_50

    .line 458
    :cond_10
    iget-boolean v1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsListShared:Z

    if-nez v1, :cond_50

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableList(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_50

    .line 462
    :cond_1b
    iget-object v1, p0, Lio/ktor/util/pipeline/Pipeline;->interceptorsListSharedPhase:Lio/ktor/util/pipeline/PipelinePhase;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    .line 463
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    .line 467
    :cond_28
    iget-object v1, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/Pipeline;->findPhaseIndex(Lio/ktor/util/pipeline/PipelinePhase;)I

    move-result v1

    iget-object v4, p0, Lio/ktor/util/pipeline/Pipeline;->phasesRaw:Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-ne v1, v4, :cond_41

    goto :goto_42

    :cond_41
    return v2

    .line 468
    :cond_42
    :goto_42
    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/Pipeline;->findPhase(Lio/ktor/util/pipeline/PipelinePhase;)Lio/ktor/util/pipeline/PhaseContent;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lio/ktor/util/pipeline/PhaseContent;->addInterceptor(Lkotlin/jvm/functions/Function3;)V

    .line 469
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_50
    :goto_50
    return v2
.end method
