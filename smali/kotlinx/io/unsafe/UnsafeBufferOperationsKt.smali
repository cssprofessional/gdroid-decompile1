###### Class kotlinx.io.unsafe.UnsafeBufferOperationsKt (kotlinx.io.unsafe.UnsafeBufferOperationsKt)
.class public final Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;
.super Ljava/lang/Object;
.source "UnsafeBufferOperations.kt"


# static fields
.field public static final BufferIterationContextImpl:Lkotlinx/io/unsafe/BufferIterationContext;

.field public static final SegmentReadContextImpl:Lkotlinx/io/unsafe/SegmentReadContext;

.field public static final SegmentWriteContextImpl:Lkotlinx/io/unsafe/SegmentWriteContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 534
    new-instance v0, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt$SegmentReadContextImpl$1;

    invoke-direct {v0}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt$SegmentReadContextImpl$1;-><init>()V

    sput-object v0, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->SegmentReadContextImpl:Lkotlinx/io/unsafe/SegmentReadContext;

    .line 541
    new-instance v0, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt$SegmentWriteContextImpl$1;

    invoke-direct {v0}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt$SegmentWriteContextImpl$1;-><init>()V

    sput-object v0, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->SegmentWriteContextImpl:Lkotlinx/io/unsafe/SegmentWriteContext;

    .line 562
    new-instance v0, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt$BufferIterationContextImpl$1;

    invoke-direct {v0}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt$BufferIterationContextImpl$1;-><init>()V

    sput-object v0, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->BufferIterationContextImpl:Lkotlinx/io/unsafe/BufferIterationContext;

    return-void
.end method

.method public static final synthetic getSegmentReadContextImpl()Lkotlinx/io/unsafe/SegmentReadContext;
    .registers 1

    .line 531
    sget-object v0, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->SegmentReadContextImpl:Lkotlinx/io/unsafe/SegmentReadContext;

    return-object v0
.end method

.method public static final synthetic getSegmentWriteContextImpl()Lkotlinx/io/unsafe/SegmentWriteContext;
    .registers 1

    .line 538
    sget-object v0, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->SegmentWriteContextImpl:Lkotlinx/io/unsafe/SegmentWriteContext;

    return-object v0
.end method

###### Class kotlinx.io.unsafe.UnsafeBufferOperationsKt$BufferIterationContextImpl$1 (kotlinx.io.unsafe.UnsafeBufferOperationsKt$BufferIterationContextImpl$1)
.class public final Lkotlinx/io/unsafe/UnsafeBufferOperationsKt$BufferIterationContextImpl$1;
.super Ljava/lang/Object;
.source "UnsafeBufferOperations.kt"

# interfaces
.implements Lkotlinx/io/unsafe/BufferIterationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnchecked(Lkotlinx/io/Segment;I)B
    .registers 3

    const-string p0, "segment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;->getSegmentReadContextImpl()Lkotlinx/io/unsafe/SegmentReadContext;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lkotlinx/io/unsafe/SegmentReadContext;->getUnchecked(Lkotlinx/io/Segment;I)B

    move-result p0

    return p0
.end method

###### Class kotlinx.io.unsafe.UnsafeBufferOperationsKt$SegmentReadContextImpl$1 (kotlinx.io.unsafe.UnsafeBufferOperationsKt$SegmentReadContextImpl$1)
.class public final Lkotlinx/io/unsafe/UnsafeBufferOperationsKt$SegmentReadContextImpl$1;
.super Ljava/lang/Object;
.source "UnsafeBufferOperations.kt"

# interfaces
.implements Lkotlinx/io/unsafe/SegmentReadContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnchecked(Lkotlinx/io/Segment;I)B
    .registers 3

    const-string p0, "segment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1, p2}, Lkotlinx/io/Segment;->getUnchecked$kotlinx_io_core(I)B

    move-result p0

    return p0
.end method

###### Class kotlinx.io.unsafe.UnsafeBufferOperationsKt$SegmentWriteContextImpl$1 (kotlinx.io.unsafe.UnsafeBufferOperationsKt$SegmentWriteContextImpl$1)
.class public final Lkotlinx/io/unsafe/UnsafeBufferOperationsKt$SegmentWriteContextImpl$1;
.super Ljava/lang/Object;
.source "UnsafeBufferOperations.kt"

# interfaces
.implements Lkotlinx/io/unsafe/SegmentWriteContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/io/unsafe/UnsafeBufferOperationsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setUnchecked(Lkotlinx/io/Segment;IB)V
    .registers 4

    const-string p0, "segment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1, p2, p3}, Lkotlinx/io/Segment;->setUnchecked$kotlinx_io_core(IB)V

    return-void
.end method

.method public setUnchecked(Lkotlinx/io/Segment;IBB)V
    .registers 5

    const-string p0, "segment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1, p2, p3, p4}, Lkotlinx/io/Segment;->setUnchecked$kotlinx_io_core(IBB)V

    return-void
.end method

.method public setUnchecked(Lkotlinx/io/Segment;IBBB)V
    .registers 6

    const-string p0, "segment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1, p2, p3, p4, p5}, Lkotlinx/io/Segment;->setUnchecked$kotlinx_io_core(IBBB)V

    return-void
.end method

.method public setUnchecked(Lkotlinx/io/Segment;IBBBB)V
    .registers 7

    const-string p0, "segment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p1 .. p6}, Lkotlinx/io/Segment;->setUnchecked$kotlinx_io_core(IBBBB)V

    return-void
.end method
