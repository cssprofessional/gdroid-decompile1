###### Class io.ktor.client.engine.HttpClientEngineBase (io.ktor.client.engine.HttpClientEngineBase)
.class public abstract Lio/ktor/client/engine/HttpClientEngineBase;
.super Ljava/lang/Object;
.source "HttpClientEngineBase.kt"

# interfaces
.implements Lio/ktor/client/engine/HttpClientEngine;


# static fields
.field public static final synthetic closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic closed:I

.field public final coroutineContext$delegate:Lkotlin/Lazy;

.field public final dispatcher$delegate:Lkotlin/Lazy;

.field public final engineName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$W8fN_h3EvbqRkag-cFJfwwhBv-w(Lio/ktor/client/engine/HttpClientEngineBase;)Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->dispatcher_delegate$lambda$0(Lio/ktor/client/engine/HttpClientEngineBase;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bIL5dZPzaXOm6dukRO-ZEAYO9oA(Lio/ktor/client/engine/HttpClientEngineBase;)Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->coroutineContext_delegate$lambda$0(Lio/ktor/client/engine/HttpClientEngineBase;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    const-class v0, Lio/ktor/client/engine/HttpClientEngineBase;

    const-string v1, "closed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/client/engine/HttpClientEngineBase;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "engineName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase;->engineName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lio/ktor/client/engine/HttpClientEngineBase;->closed:I

    .line 43
    new-instance p1, Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda0;-><init>(Lio/ktor/client/engine/HttpClientEngineBase;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase;->dispatcher$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda1;-><init>(Lio/ktor/client/engine/HttpClientEngineBase;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase;->coroutineContext$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final coroutineContext_delegate$lambda$0(Lio/ktor/client/engine/HttpClientEngineBase;)Lkotlin/coroutines/CoroutineContext;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 46
    invoke-static {v0, v1, v0}, Lio/ktor/util/CoroutinesUtilsKt;->SilentSupervisor$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lio/ktor/client/engine/HttpClientEngineBase;->engineName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-context"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public static final dispatcher_delegate$lambda$0(Lio/ktor/client/engine/HttpClientEngineBase;)Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 1

    .line 43
    invoke-interface {p0}, Lio/ktor/client/engine/HttpClientEngine;->getConfig()Lio/ktor/client/engine/HttpClientEngineConfig;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/client/engine/HttpClientEngineConfig;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    if-nez p0, :cond_e

    invoke-static {}, Lio/ktor/utils/io/IODispatcher_jvmKt;->ioDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    :cond_e
    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 50
    sget-object v0, Lio/ktor/client/engine/HttpClientEngineBase;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 52
    :cond_b
    invoke-virtual {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/CompletableJob;

    if-eqz v0, :cond_1c

    check-cast p0, Lkotlinx/coroutines/CompletableJob;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    if-nez p0, :cond_20

    return-void

    .line 54
    :cond_20
    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 45
    iget-object p0, p0, Lio/ktor/client/engine/HttpClientEngineBase;->coroutineContext$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 1

    .line 43
    iget-object p0, p0, Lio/ktor/client/engine/HttpClientEngineBase;->dispatcher$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public bridge getSupportedCapabilities()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/ktor/client/engine/HttpClientEngineCapability<",
            "*>;>;"
        }
    .end annotation

    .line 40
    invoke-super {p0}, Lio/ktor/client/engine/HttpClientEngine;->getSupportedCapabilities()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge install(Lio/ktor/client/HttpClient;)V
    .registers 2

    .line 40
    invoke-super {p0, p1}, Lio/ktor/client/engine/HttpClientEngine;->install(Lio/ktor/client/HttpClient;)V

    return-void
.end method

###### Class io.ktor.client.engine.HttpClientEngineBase$$ExternalSyntheticLambda0 (io.ktor.client.engine.HttpClientEngineBase$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/client/engine/HttpClientEngineBase;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/client/engine/HttpClientEngineBase;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda0;->f$0:Lio/ktor/client/engine/HttpClientEngineBase;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda0;->f$0:Lio/ktor/client/engine/HttpClientEngineBase;

    invoke-static {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->$r8$lambda$W8fN_h3EvbqRkag-cFJfwwhBv-w(Lio/ktor/client/engine/HttpClientEngineBase;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.client.engine.HttpClientEngineBase$$ExternalSyntheticLambda1 (io.ktor.client.engine.HttpClientEngineBase$$ExternalSyntheticLambda1)
.class public final synthetic Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/ktor/client/engine/HttpClientEngineBase;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/client/engine/HttpClientEngineBase;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda1;->f$0:Lio/ktor/client/engine/HttpClientEngineBase;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/client/engine/HttpClientEngineBase$$ExternalSyntheticLambda1;->f$0:Lio/ktor/client/engine/HttpClientEngineBase;

    invoke-static {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->$r8$lambda$bIL5dZPzaXOm6dukRO-ZEAYO9oA(Lio/ktor/client/engine/HttpClientEngineBase;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method
