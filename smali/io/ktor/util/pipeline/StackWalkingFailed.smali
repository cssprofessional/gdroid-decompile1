###### Class io.ktor.util.pipeline.StackWalkingFailed (io.ktor.util.pipeline.StackWalkingFailed)
.class public final Lio/ktor/util/pipeline/StackWalkingFailed;
.super Ljava/lang/Object;
.source "StackWalkingFailed.kt"


# static fields
.field public static final INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailed;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/util/pipeline/StackWalkingFailed;

    invoke-direct {v0}, Lio/ktor/util/pipeline/StackWalkingFailed;-><init>()V

    sput-object v0, Lio/ktor/util/pipeline/StackWalkingFailed;->INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailed;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final failedToCaptureStackFrame()V
    .registers 2

    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v0, "Failed to capture stack frame. This is usually happens when a coroutine is running so the frame stack is changing quickly and the coroutine debug agent is unable to capture it concurrently. You may retry running your test to see this particular trace."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
