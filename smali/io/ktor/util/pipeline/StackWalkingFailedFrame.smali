###### Class io.ktor.util.pipeline.StackWalkingFailedFrame (io.ktor.util.pipeline.StackWalkingFailedFrame)
.class public final Lio/ktor/util/pipeline/StackWalkingFailedFrame;
.super Ljava/lang/Object;
.source "StackWalkingFailedFrame.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation<",
        "*>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailedFrame;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/util/pipeline/StackWalkingFailedFrame;

    invoke-direct {v0}, Lio/ktor/util/pipeline/StackWalkingFailedFrame;-><init>()V

    sput-object v0, Lio/ktor/util/pipeline/StackWalkingFailedFrame;->INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailedFrame;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 28
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 4

    const-class p0, Lio/ktor/util/pipeline/StackWalkingFailed;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    .line 21
    sget-object v0, Lio/ktor/util/pipeline/StackWalkingFailed;->INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailed;

    .line 22
    const-string v0, "StackWalkingFailed.kt"

    const/16 v1, 0x8

    .line 19
    const-string v2, "failedToCaptureStackFrame"

    invoke-static {p0, v2, v0, v1}, Lio/ktor/util/StackFramesJvmKt;->createStackTraceElement(Lkotlin/reflect/KClass;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 2

    .line 31
    sget-object p0, Lio/ktor/util/pipeline/StackWalkingFailed;->INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailed;

    invoke-virtual {p0}, Lio/ktor/util/pipeline/StackWalkingFailed;->failedToCaptureStackFrame()V

    return-void
.end method
