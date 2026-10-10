###### Class kotlinx.io.SegmentCopyTracker (kotlinx.io.SegmentCopyTracker)
.class public abstract Lkotlinx/io/SegmentCopyTracker;
.super Ljava/lang/Object;
.source "Segment.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addCopy()V
.end method

.method public abstract getShared()Z
.end method

.method public abstract removeCopy()Z
.end method
