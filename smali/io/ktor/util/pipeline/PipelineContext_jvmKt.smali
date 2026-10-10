###### Class io.ktor.util.pipeline.PipelineContext_jvmKt (io.ktor.util.pipeline.PipelineContext_jvmKt)
.class public final Lio/ktor/util/pipeline/PipelineContext_jvmKt;
.super Ljava/lang/Object;
.source "PipelineContext.jvm.kt"


# static fields
.field public static final DISABLE_SFG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    const-string v0, "io.ktor.internal.disable.sfg"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lio/ktor/util/pipeline/PipelineContext_jvmKt;->DISABLE_SFG:Z

    return-void
.end method

.method public static final getDISABLE_SFG()Z
    .registers 1

    .line 7
    sget-boolean v0, Lio/ktor/util/pipeline/PipelineContext_jvmKt;->DISABLE_SFG:Z

    return v0
.end method
