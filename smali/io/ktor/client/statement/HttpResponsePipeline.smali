###### Class io.ktor.client.statement.HttpResponsePipeline (io.ktor.client.statement.HttpResponsePipeline)
.class public final Lio/ktor/client/statement/HttpResponsePipeline;
.super Lio/ktor/util/pipeline/Pipeline;
.source "HttpResponsePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/statement/HttpResponsePipeline$Phases;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/util/pipeline/Pipeline<",
        "Lio/ktor/client/statement/HttpResponseContainer;",
        "Lio/ktor/client/call/HttpClientCall;",
        ">;"
    }
.end annotation


# static fields
.field public static final After:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Parse:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Phases:Lio/ktor/client/statement/HttpResponsePipeline$Phases;

.field public static final Receive:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final State:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Transform:Lio/ktor/util/pipeline/PipelinePhase;


# instance fields
.field public final developmentMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/ktor/client/statement/HttpResponsePipeline$Phases;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/statement/HttpResponsePipeline$Phases;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Phases:Lio/ktor/client/statement/HttpResponsePipeline$Phases;

    .line 32
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Receive"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    .line 39
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Parse"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Parse:Lio/ktor/util/pipeline/PipelinePhase;

    .line 46
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Transform"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    .line 53
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "State"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    .line 60
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "After"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 7

    .line 20
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    .line 21
    sget-object v1, Lio/ktor/client/statement/HttpResponsePipeline;->Parse:Lio/ktor/util/pipeline/PipelinePhase;

    .line 22
    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    .line 23
    sget-object v3, Lio/ktor/client/statement/HttpResponsePipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    .line 24
    sget-object v4, Lio/ktor/client/statement/HttpResponsePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/Pipeline;-><init>([Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 18
    iput-boolean p1, p0, Lio/ktor/client/statement/HttpResponsePipeline;->developmentMode:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 17
    :cond_5
    invoke-direct {p0, p1}, Lio/ktor/client/statement/HttpResponsePipeline;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getParse$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 17
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Parse:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getReceive$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 17
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getTransform$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 17
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method


# virtual methods
.method public getDevelopmentMode()Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lio/ktor/client/statement/HttpResponsePipeline;->developmentMode:Z

    return p0
.end method

###### Class io.ktor.client.statement.HttpResponsePipeline.Phases (io.ktor.client.statement.HttpResponsePipeline$Phases)
.class public final Lio/ktor/client/statement/HttpResponsePipeline$Phases;
.super Ljava/lang/Object;
.source "HttpResponsePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/statement/HttpResponsePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phases"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/client/statement/HttpResponsePipeline$Phases;-><init>()V

    return-void
.end method


# virtual methods
.method public final getParse()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 39
    invoke-static {}, Lio/ktor/client/statement/HttpResponsePipeline;->access$getParse$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method

.method public final getReceive()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 32
    invoke-static {}, Lio/ktor/client/statement/HttpResponsePipeline;->access$getReceive$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method

.method public final getTransform()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 46
    invoke-static {}, Lio/ktor/client/statement/HttpResponsePipeline;->access$getTransform$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method
