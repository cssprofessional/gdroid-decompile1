###### Class okhttp3.coroutines.ExecuteAsyncKt (okhttp3.coroutines.ExecuteAsyncKt)
.class public final Lokhttp3/coroutines/ExecuteAsyncKt;
.super Ljava/lang/Object;
.source "ExecuteAsync.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExecuteAsync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExecuteAsync.kt\nokhttp3/coroutines/ExecuteAsyncKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,53:1\n426#2,11:54\n*S KotlinDebug\n*F\n+ 1 ExecuteAsync.kt\nokhttp3/coroutines/ExecuteAsyncKt\n*L\n29#1:54,11\n*E\n"
.end annotation


# direct methods
.method public static final executeAsync(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lokhttp3/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 427
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 433
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 30
    new-instance v1, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$1;

    invoke-direct {v1, p0}, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$1;-><init>(Lokhttp3/Call;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 34
    new-instance v1, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2;

    invoke-direct {v1, v0}, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    .line 33
    invoke-interface {p0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 435
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 426
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_2a

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2a
    return-object p0
.end method

###### Class okhttp3.coroutines.ExecuteAsyncKt$executeAsync$2$1 (okhttp3.coroutines.ExecuteAsyncKt$executeAsync$2$1)
.class public final Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$1;
.super Ljava/lang/Object;
.source "ExecuteAsync.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/coroutines/ExecuteAsyncKt;->executeAsync(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $this_executeAsync:Lokhttp3/Call;


# direct methods
.method public constructor <init>(Lokhttp3/Call;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$1;->$this_executeAsync:Lokhttp3/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 2

    .line 31
    iget-object p0, p0, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$1;->$this_executeAsync:Lokhttp3/Call;

    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

###### Class okhttp3.coroutines.ExecuteAsyncKt$executeAsync$2$2 (okhttp3.coroutines.ExecuteAsyncKt$executeAsync$2$2)
.class public final Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2;
.super Ljava/lang/Object;
.source "ExecuteAsync.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/coroutines/ExecuteAsyncKt;->executeAsync(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lokhttp3/Response;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object p1, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2$onResponse$1;->INSTANCE:Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2$onResponse$1;

    invoke-interface {p0, p2, p1}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

###### Class okhttp3.coroutines.ExecuteAsyncKt$executeAsync$2$2$onResponse$1 (okhttp3.coroutines.ExecuteAsyncKt$executeAsync$2$2$onResponse$1)
.class public final Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2$onResponse$1;
.super Ljava/lang/Object;
.source "ExecuteAsync.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Throwable;",
        "Lokhttp3/Response;",
        "Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2$onResponse$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2$onResponse$1;

    invoke-direct {v0}, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2$onResponse$1;-><init>()V

    sput-object v0, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2$onResponse$1;->INSTANCE:Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2$onResponse$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 46
    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lokhttp3/Response;

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/coroutines/ExecuteAsyncKt$executeAsync$2$2$onResponse$1;->invoke(Ljava/lang/Throwable;Lokhttp3/Response;Lkotlin/coroutines/CoroutineContext;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;Lokhttp3/Response;Lkotlin/coroutines/CoroutineContext;)V
    .registers 4

    const-string p0, "<unused var>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
