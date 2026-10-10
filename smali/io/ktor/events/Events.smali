###### Class io.ktor.events.Events (io.ktor.events.Events)
.class public final Lio/ktor/events/Events;
.super Ljava/lang/Object;
.source "Events.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/events/Events$HandlerRegistration;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n+ 2 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListHead\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n832#2,6:103\n832#2,3:109\n835#2,3:113\n1#3:112\n*S KotlinDebug\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n*L\n34#1:103,6\n49#1:109,3\n49#1:113,3\n*E\n"
.end annotation


# instance fields
.field public final handlers:Lio/ktor/util/collections/CopyOnWriteHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/collections/CopyOnWriteHashMap<",
            "Lio/ktor/events/EventDefinition<",
            "*>;",
            "Lio/ktor/util/internal/LockFreeLinkedListHead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lio/ktor/util/collections/CopyOnWriteHashMap;

    invoke-direct {v0}, Lio/ktor/util/collections/CopyOnWriteHashMap;-><init>()V

    iput-object v0, p0, Lio/ktor/events/Events;->handlers:Lio/ktor/util/collections/CopyOnWriteHashMap;

    return-void
.end method


# virtual methods
.method public final raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/events/EventDefinition<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "definition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lio/ktor/events/Events;->handlers:Lio/ktor/util/collections/CopyOnWriteHashMap;

    invoke-virtual {p0, p1}, Lio/ktor/util/collections/CopyOnWriteHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/util/internal/LockFreeLinkedListHead;

    const/4 p1, 0x0

    if-eqz p0, :cond_49

    .line 832
    invoke-virtual {p0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/ktor/util/internal/LockFreeLinkedListNode;

    .line 833
    :goto_1b
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 834
    instance-of v1, v0, Lio/ktor/events/Events$HandlerRegistration;

    if-eqz v1, :cond_44

    move-object v1, v0

    check-cast v1, Lio/ktor/events/Events$HandlerRegistration;

    .line 52
    :try_start_28
    invoke-virtual {v1}, Lio/ktor/events/Events$HandlerRegistration;->getHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Function1<T of io.ktor.events.Events.raise, kotlin.Unit>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_3c

    goto :goto_44

    :catchall_3c
    move-exception v1

    if-eqz p1, :cond_43

    .line 54
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt__ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_44

    :cond_43
    move-object p1, v1

    .line 835
    :cond_44
    :goto_44
    invoke-virtual {v0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->getNextNode()Lio/ktor/util/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_1b

    :cond_49
    if-nez p1, :cond_4c

    return-void

    .line 57
    :cond_4c
    throw p1
.end method

###### Class io.ktor.events.Events.HandlerRegistration (io.ktor.events.Events$HandlerRegistration)
.class public final Lio/ktor/events/Events$HandlerRegistration;
.super Lio/ktor/util/internal/LockFreeLinkedListNode;
.source "Events.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/events/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerRegistration"
.end annotation


# instance fields
.field public final handler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "*",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public dispose()V
    .registers 1

    .line 62
    invoke-virtual {p0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->remove()Z

    return-void
.end method

.method public final getHandler()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "*",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lio/ktor/events/Events$HandlerRegistration;->handler:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
