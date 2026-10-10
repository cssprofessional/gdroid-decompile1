###### Class kotlinx.io.RefCountingCopyTracker (kotlinx.io.RefCountingCopyTracker)
.class public final Lkotlinx/io/RefCountingCopyTracker;
.super Lkotlinx/io/SegmentCopyTracker;
.source "SegmentPool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/io/RefCountingCopyTracker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentPool.kt\nkotlinx/io/RefCountingCopyTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n1#2:306\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlinx/io/RefCountingCopyTracker$Companion;

.field public static final fieldUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lkotlinx/io/RefCountingCopyTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile copyCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/io/RefCountingCopyTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/io/RefCountingCopyTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/io/RefCountingCopyTracker;->Companion:Lkotlinx/io/RefCountingCopyTracker$Companion;

    .line 42
    const-class v0, Lkotlinx/io/RefCountingCopyTracker;

    const-string v1, "copyCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/io/RefCountingCopyTracker;->fieldUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lkotlinx/io/SegmentCopyTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public addCopy()V
    .registers 2

    .line 54
    sget-object v0, Lkotlinx/io/RefCountingCopyTracker;->fieldUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    return-void
.end method

.method public getShared()Z
    .registers 1

    .line 50
    iget p0, p0, Lkotlinx/io/RefCountingCopyTracker;->copyCount:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public removeCopy()Z
    .registers 5

    .line 60
    iget v0, p0, Lkotlinx/io/RefCountingCopyTracker;->copyCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 62
    :cond_6
    sget-object v0, Lkotlinx/io/RefCountingCopyTracker;->fieldUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_10

    return v2

    :cond_10
    const/4 v3, -0x1

    if-ne v0, v3, :cond_16

    .line 69
    iput v1, p0, Lkotlinx/io/RefCountingCopyTracker;->copyCount:I

    return v1

    .line 68
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shared copies count is negative: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class kotlinx.io.RefCountingCopyTracker.Companion (kotlinx.io.RefCountingCopyTracker$Companion)
.class public final Lkotlinx/io/RefCountingCopyTracker$Companion;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/io/RefCountingCopyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlinx/io/RefCountingCopyTracker$Companion;-><init>()V

    return-void
.end method
