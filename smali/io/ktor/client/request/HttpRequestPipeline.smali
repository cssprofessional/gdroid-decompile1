###### Class io.ktor.client.request.HttpRequestPipeline (io.ktor.client.request.HttpRequestPipeline)
.class public final Lio/ktor/client/request/HttpRequestPipeline;
.super Lio/ktor/util/pipeline/Pipeline;
.source "HttpRequestPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/request/HttpRequestPipeline$Phases;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/util/pipeline/Pipeline<",
        "Ljava/lang/Object;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Before:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Phases:Lio/ktor/client/request/HttpRequestPipeline$Phases;

.field public static final Render:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Send:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final State:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Transform:Lio/ktor/util/pipeline/PipelinePhase;


# instance fields
.field public final developmentMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/ktor/client/request/HttpRequestPipeline$Phases;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/request/HttpRequestPipeline$Phases;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Phases:Lio/ktor/client/request/HttpRequestPipeline$Phases;

    .line 31
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Before"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    .line 38
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "State"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpRequestPipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    .line 45
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Transform"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    .line 52
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Render"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Render:Lio/ktor/util/pipeline/PipelinePhase;

    .line 59
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Send"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Send:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 7

    .line 18
    sget-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v1, Lio/ktor/client/request/HttpRequestPipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v2, Lio/ktor/client/request/HttpRequestPipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v3, Lio/ktor/client/request/HttpRequestPipeline;->Render:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v4, Lio/ktor/client/request/HttpRequestPipeline;->Send:Lio/ktor/util/pipeline/PipelinePhase;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/Pipeline;-><init>([Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 17
    iput-boolean p1, p0, Lio/ktor/client/request/HttpRequestPipeline;->developmentMode:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 16
    :cond_5
    invoke-direct {p0, p1}, Lio/ktor/client/request/HttpRequestPipeline;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getBefore$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getRender$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Render:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getSend$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Send:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getState$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/client/request/HttpRequestPipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method


# virtual methods
.method public getDevelopmentMode()Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lio/ktor/client/request/HttpRequestPipeline;->developmentMode:Z

    return p0
.end method

###### Class io.ktor.client.request.HttpRequestPipeline.Phases (io.ktor.client.request.HttpRequestPipeline$Phases)
.class public final Lio/ktor/client/request/HttpRequestPipeline$Phases;
.super Ljava/lang/Object;
.source "HttpRequestPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/request/HttpRequestPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phases"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/client/request/HttpRequestPipeline$Phases;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBefore()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 31
    invoke-static {}, Lio/ktor/client/request/HttpRequestPipeline;->access$getBefore$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method

.method public final getRender()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 52
    invoke-static {}, Lio/ktor/client/request/HttpRequestPipeline;->access$getRender$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method

.method public final getSend()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 59
    invoke-static {}, Lio/ktor/client/request/HttpRequestPipeline;->access$getSend$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method

.method public final getState()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 38
    invoke-static {}, Lio/ktor/client/request/HttpRequestPipeline;->access$getState$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method
