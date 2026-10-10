###### Class io.ktor.client.request.HttpSendPipeline (io.ktor.client.request.HttpSendPipeline)
.class public final Lio/ktor/client/request/HttpSendPipeline;
.super Lio/ktor/util/pipeline/Pipeline;
.source "HttpRequestPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/request/HttpSendPipeline$Phases;
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

.field public static final Engine:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Monitoring:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Phases:Lio/ktor/client/request/HttpSendPipeline$Phases;

.field public static final Receive:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final State:Lio/ktor/util/pipeline/PipelinePhase;


# instance fields
.field public final developmentMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/ktor/client/request/HttpSendPipeline$Phases;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/request/HttpSendPipeline$Phases;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/request/HttpSendPipeline;->Phases:Lio/ktor/client/request/HttpSendPipeline$Phases;

    .line 78
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Before"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpSendPipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    .line 85
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "State"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpSendPipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    .line 92
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Monitoring"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpSendPipeline;->Monitoring:Lio/ktor/util/pipeline/PipelinePhase;

    .line 99
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Engine"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpSendPipeline;->Engine:Lio/ktor/util/pipeline/PipelinePhase;

    .line 106
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Receive"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/request/HttpSendPipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 7

    .line 70
    sget-object v0, Lio/ktor/client/request/HttpSendPipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v1, Lio/ktor/client/request/HttpSendPipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v2, Lio/ktor/client/request/HttpSendPipeline;->Monitoring:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v3, Lio/ktor/client/request/HttpSendPipeline;->Engine:Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v4, Lio/ktor/client/request/HttpSendPipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/Pipeline;-><init>([Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 69
    iput-boolean p1, p0, Lio/ktor/client/request/HttpSendPipeline;->developmentMode:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 68
    :cond_5
    invoke-direct {p0, p1}, Lio/ktor/client/request/HttpSendPipeline;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getEngine$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 68
    sget-object v0, Lio/ktor/client/request/HttpSendPipeline;->Engine:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getReceive$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 68
    sget-object v0, Lio/ktor/client/request/HttpSendPipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method


# virtual methods
.method public getDevelopmentMode()Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lio/ktor/client/request/HttpSendPipeline;->developmentMode:Z

    return p0
.end method

###### Class io.ktor.client.request.HttpSendPipeline.Phases (io.ktor.client.request.HttpSendPipeline$Phases)
.class public final Lio/ktor/client/request/HttpSendPipeline$Phases;
.super Ljava/lang/Object;
.source "HttpRequestPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/request/HttpSendPipeline;
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
    invoke-direct {p0}, Lio/ktor/client/request/HttpSendPipeline$Phases;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEngine()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 99
    invoke-static {}, Lio/ktor/client/request/HttpSendPipeline;->access$getEngine$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method

.method public final getReceive()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 106
    invoke-static {}, Lio/ktor/client/request/HttpSendPipeline;->access$getReceive$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p0

    return-object p0
.end method
