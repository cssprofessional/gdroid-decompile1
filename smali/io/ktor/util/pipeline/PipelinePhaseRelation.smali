###### Class io.ktor.util.pipeline.PipelinePhaseRelation (io.ktor.util.pipeline.PipelinePhaseRelation)
.class public abstract Lio/ktor/util/pipeline/PipelinePhaseRelation;
.super Ljava/lang/Object;
.source "PipelinePhaseRelation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/util/pipeline/PipelinePhaseRelation$After;,
        Lio/ktor/util/pipeline/PipelinePhaseRelation$Before;,
        Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/util/pipeline/PipelinePhaseRelation;-><init>()V

    return-void
.end method

###### Class io.ktor.util.pipeline.PipelinePhaseRelation.After (io.ktor.util.pipeline.PipelinePhaseRelation$After)
.class public final Lio/ktor/util/pipeline/PipelinePhaseRelation$After;
.super Lio/ktor/util/pipeline/PipelinePhaseRelation;
.source "PipelinePhaseRelation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/pipeline/PipelinePhaseRelation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "After"
.end annotation


# instance fields
.field public final relativeTo:Lio/ktor/util/pipeline/PipelinePhase;


# direct methods
.method public constructor <init>(Lio/ktor/util/pipeline/PipelinePhase;)V
    .registers 3

    const-string v0, "relativeTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/PipelinePhaseRelation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/util/pipeline/PipelinePhaseRelation$After;->relativeTo:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method


# virtual methods
.method public final getRelativeTo()Lio/ktor/util/pipeline/PipelinePhase;
    .registers 1

    .line 15
    iget-object p0, p0, Lio/ktor/util/pipeline/PipelinePhaseRelation$After;->relativeTo:Lio/ktor/util/pipeline/PipelinePhase;

    return-object p0
.end method

###### Class io.ktor.util.pipeline.PipelinePhaseRelation.Before (io.ktor.util.pipeline.PipelinePhaseRelation$Before)
.class public final Lio/ktor/util/pipeline/PipelinePhaseRelation$Before;
.super Lio/ktor/util/pipeline/PipelinePhaseRelation;
.source "PipelinePhaseRelation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/pipeline/PipelinePhaseRelation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Before"
.end annotation


# instance fields
.field public final relativeTo:Lio/ktor/util/pipeline/PipelinePhase;


# direct methods
.method public constructor <init>(Lio/ktor/util/pipeline/PipelinePhase;)V
    .registers 3

    const-string v0, "relativeTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/PipelinePhaseRelation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/util/pipeline/PipelinePhaseRelation$Before;->relativeTo:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

###### Class io.ktor.util.pipeline.PipelinePhaseRelation.Last (io.ktor.util.pipeline.PipelinePhaseRelation$Last)
.class public final Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;
.super Lio/ktor/util/pipeline/PipelinePhaseRelation;
.source "PipelinePhaseRelation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/pipeline/PipelinePhaseRelation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Last"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;

    invoke-direct {v0}, Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;-><init>()V

    sput-object v0, Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;->INSTANCE:Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/PipelinePhaseRelation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of p0, p1, Lio/ktor/util/pipeline/PipelinePhaseRelation$Last;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    const p0, 0x39b082c9

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "Last"

    return-object p0
.end method
