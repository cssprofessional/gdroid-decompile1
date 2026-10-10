###### Class kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed (kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed)
.class public final Lkotlinx/coroutines/internal/ExceptionSuccessfullyProcessed;
.super Ljava/lang/Exception;
.source "CoroutineExceptionHandlerImpl.common.kt"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/ExceptionSuccessfullyProcessed;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lkotlinx/coroutines/internal/ExceptionSuccessfullyProcessed;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ExceptionSuccessfullyProcessed;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ExceptionSuccessfullyProcessed;->INSTANCE:Lkotlinx/coroutines/internal/ExceptionSuccessfullyProcessed;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
