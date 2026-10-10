###### Class io.ktor.util.pipeline.InvalidPhaseException (io.ktor.util.pipeline.InvalidPhaseException)
.class public final Lio/ktor/util/pipeline/InvalidPhaseException;
.super Ljava/lang/Throwable;
.source "PipelinePhase.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
