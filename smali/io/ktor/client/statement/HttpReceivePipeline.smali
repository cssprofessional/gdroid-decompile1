###### Class io.ktor.client.statement.HttpReceivePipeline (io.ktor.client.statement.HttpReceivePipeline)
.class public final Lio/ktor/client/statement/HttpReceivePipeline;
.super Lio/ktor/util/pipeline/Pipeline;
.source "HttpResponsePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/statement/HttpReceivePipeline$Phases;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/util/pipeline/Pipeline<",
        "Lio/ktor/client/statement/HttpResponse;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final After:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Before:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Phases:Lio/ktor/client/statement/HttpReceivePipeline$Phases;

.field public static final State:Lio/ktor/util/pipeline/PipelinePhase;


# instance fields
.field public final developmentMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/ktor/client/statement/HttpReceivePipeline$Phases;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/statement/HttpReceivePipeline$Phases;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/statement/HttpReceivePipeline;->Phases:Lio/ktor/client/statement/HttpReceivePipeline$Phases;

    .line 78
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Before"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpReceivePipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    .line 85
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "State"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpReceivePipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    .line 92
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "After"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpReceivePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5

    .line 71
    sget-object v0, Lio/ktor/client/statement/HttpReceivePipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v1, Lio/ktor/client/statement/HttpReceivePipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v2, Lio/ktor/client/statement/HttpReceivePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    filled-new-array {v0, v1, v2}, [Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/Pipeline;-><init>([Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 70
    iput-boolean p1, p0, Lio/ktor/client/statement/HttpReceivePipeline;->developmentMode:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 69
    :cond_5
    invoke-direct {p0, p1}, Lio/ktor/client/statement/HttpReceivePipeline;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getAfter$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 69
    sget-object v0, Lio/ktor/client/statement/HttpReceivePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getBefore$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 69
    sget-object v0, Lio/ktor/client/statement/HttpReceivePipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method


# virtual methods
.method public getDevelopmentMode()Z
    .registers 1

    .line 70
    iget-boolean p0, p0, Lio/ktor/client/statement/HttpReceivePipeline;->developmentMode:Z

    return p0
.end method

###### Class io.ktor.client.statement.HttpReceivePipeline.Phases (io.ktor.client.statement.HttpReceivePipeline$Phases)
.class public final Lio/ktor/client/statement/HttpReceivePipeline$Phases;
.super Ljava/lang/Object;
.source "HttpResponsePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/statement/HttpReceivePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phases"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/client/statement/HttpReceivePipeline$Phases;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAfter()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 92
    invoke-static {}, Lio/ktor/client/statement/HttpReceivePipeline;->access$getAfter$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method

.method public final getBefore()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 78
    invoke-static {}, Lio/ktor/client/statement/HttpReceivePipeline;->access$getBefore$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method
