###### Class io.ktor.util.internal.LockFreeLinkedListNode (io.ktor.util.internal.LockFreeLinkedListNode)
.class public Lio/ktor/util/internal/LockFreeLinkedListNode;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,856:1\n196#1,3:862\n196#1,3:865\n1#2:857\n155#3,2:858\n155#3,2:860\n155#3,2:868\n155#3,2:870\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListNode\n*L\n266#1:862,3\n300#1:865,3\n205#1:858,2\n217#1:860,2\n660#1:868,2\n678#1:870,2\n*E\n"
.end annotation


# static fields
.field public static final synthetic _next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic _prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _next:Ljava/lang/Object;

.field volatile synthetic _prev:Ljava/lang/Object;

.field private volatile synthetic removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    const-string v0, "_next"

    const-class v1, Lio/ktor/util/internal/LockFreeLinkedListNode;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "removedRef"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/util/internal/LockFreeLinkedListNode;->removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p0, p0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 169
    iput-object p0, p0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lio/ktor/util/internal/LockFreeLinkedListNode;->removedRef:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final correctPrev(Lio/ktor/util/internal/LockFreeLinkedListNode;Lio/ktor/util/internal/OpDescriptor;)Lio/ktor/util/internal/LockFreeLinkedListNode;
    .registers 9

    const/4 v0, 0x0

    :goto_1
    move-object v1, v0

    .line 767
    :cond_2
    :goto_2
    iget-object v2, p1, Lio/ktor/util/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    if-ne v2, p2, :cond_7

    return-object p1

    .line 769
    :cond_7
    instance-of v3, v2, Lio/ktor/util/internal/OpDescriptor;

    if-eqz v3, :cond_11

    .line 770
    check-cast v2, Lio/ktor/util/internal/OpDescriptor;

    invoke-virtual {v2, p1}, Lio/ktor/util/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 773
    :cond_11
    instance-of v3, v2, Lio/ktor/util/internal/Removed;

    if-eqz v3, :cond_2c

    if-eqz v1, :cond_25

    .line 775
    invoke-virtual {p1}, Lio/ktor/util/internal/LockFreeLinkedListNode;->markPrev()Lio/ktor/util/internal/LockFreeLinkedListNode;

    .line 776
    sget-object v3, Lio/ktor/util/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v2, Lio/ktor/util/internal/Removed;

    iget-object v2, v2, Lio/ktor/util/internal/Removed;->ref:Lio/ktor/util/internal/LockFreeLinkedListNode;

    invoke-static {v3, v1, p1, v2}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object p1, v1

    goto :goto_1

    .line 780
    :cond_25
    iget-object p1, p1, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    invoke-static {p1}, Lio/ktor/util/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lio/ktor/util/internal/LockFreeLinkedListNode;

    move-result-object p1

    goto :goto_2

    .line 784
    :cond_2c
    iget-object v3, p0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 785
    instance-of v4, v3, Lio/ktor/util/internal/Removed;

    if-eqz v4, :cond_33

    return-object v0

    :cond_33
    if-eq v2, p0, :cond_41

    .line 789
    const-string v1, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lio/ktor/util/internal/LockFreeLinkedListNode;

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_2

    :cond_41
    if-ne v3, p1, :cond_44

    return-object v0

    .line 793
    :cond_44
    sget-object v2, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v3, p1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    iget-object v2, p1, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    instance-of v2, v2, Lio/ktor/util/internal/Removed;

    if-nez v2, :cond_2

    return-object v0
.end method

.method public final findHead()Lio/ktor/util/internal/LockFreeLinkedListNode;
    .registers 3

    move-object v0, p0

    .line 713
    :goto_1
    instance-of v1, v0, Lio/ktor/util/internal/LockFreeLinkedListHead;

    if-eqz v1, :cond_6

    return-object v0

    .line 714
    :cond_6
    invoke-virtual {v0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->getNextNode()Lio/ktor/util/internal/LockFreeLinkedListNode;

    move-result-object v0

    if-eq v0, p0, :cond_d

    goto :goto_1

    .line 715
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot loop to this while looking for list head"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final finishRemove(Lio/ktor/util/internal/LockFreeLinkedListNode;)V
    .registers 3

    .line 673
    invoke-virtual {p0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 674
    iget-object p0, p0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    invoke-static {p0}, Lio/ktor/util/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lio/ktor/util/internal/LockFreeLinkedListNode;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->correctPrev(Lio/ktor/util/internal/LockFreeLinkedListNode;Lio/ktor/util/internal/OpDescriptor;)Lio/ktor/util/internal/LockFreeLinkedListNode;

    return-void
.end method

.method public final getNext()Ljava/lang/Object;
    .registers 3

    .line 859
    :goto_0
    iget-object v0, p0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 206
    instance-of v1, v0, Lio/ktor/util/internal/OpDescriptor;

    if-nez v1, :cond_7

    return-object v0

    .line 207
    :cond_7
    check-cast v0, Lio/ktor/util/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lio/ktor/util/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getNextNode()Lio/ktor/util/internal/LockFreeLinkedListNode;
    .registers 1

    .line 212
    invoke-virtual {p0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/ktor/util/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lio/ktor/util/internal/LockFreeLinkedListNode;

    move-result-object p0

    return-object p0
.end method

.method public final helpDelete()V
    .registers 8

    .line 723
    invoke-virtual {p0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->markPrev()Lio/ktor/util/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type io.ktor.util.internal.Removed"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/ktor/util/internal/Removed;

    iget-object v1, v1, Lio/ktor/util/internal/Removed;->ref:Lio/ktor/util/internal/LockFreeLinkedListNode;

    const/4 v2, 0x0

    :goto_10
    move-object v3, v2

    .line 727
    :cond_11
    :goto_11
    invoke-virtual {v1}, Lio/ktor/util/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v4

    .line 728
    instance-of v5, v4, Lio/ktor/util/internal/Removed;

    if-eqz v5, :cond_21

    .line 729
    invoke-virtual {v1}, Lio/ktor/util/internal/LockFreeLinkedListNode;->markPrev()Lio/ktor/util/internal/LockFreeLinkedListNode;

    .line 730
    check-cast v4, Lio/ktor/util/internal/Removed;

    iget-object v1, v4, Lio/ktor/util/internal/Removed;->ref:Lio/ktor/util/internal/LockFreeLinkedListNode;

    goto :goto_11

    .line 734
    :cond_21
    invoke-virtual {v0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v4

    .line 735
    instance-of v5, v4, Lio/ktor/util/internal/Removed;

    if-eqz v5, :cond_40

    if-eqz v3, :cond_39

    .line 737
    invoke-virtual {v0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->markPrev()Lio/ktor/util/internal/LockFreeLinkedListNode;

    .line 738
    sget-object v5, Lio/ktor/util/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lio/ktor/util/internal/Removed;

    iget-object v4, v4, Lio/ktor/util/internal/Removed;->ref:Lio/ktor/util/internal/LockFreeLinkedListNode;

    invoke-static {v5, v3, v0, v4}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_10

    .line 742
    :cond_39
    iget-object v0, v0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    invoke-static {v0}, Lio/ktor/util/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lio/ktor/util/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_11

    :cond_40
    if-eq v4, p0, :cond_51

    .line 749
    const-string v3, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    check-cast v3, Lio/ktor/util/internal/LockFreeLinkedListNode;

    if-ne v3, v1, :cond_4d

    return-void

    :cond_4d
    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_11

    .line 754
    :cond_51
    sget-object v4, Lio/ktor/util/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, p0, v1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    return-void
.end method

.method public final markPrev()Lio/ktor/util/internal/LockFreeLinkedListNode;
    .registers 4

    .line 871
    :cond_0
    iget-object v0, p0, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 679
    instance-of v1, v0, Lio/ktor/util/internal/Removed;

    if-eqz v1, :cond_b

    check-cast v0, Lio/ktor/util/internal/Removed;

    iget-object p0, v0, Lio/ktor/util/internal/Removed;->ref:Lio/ktor/util/internal/LockFreeLinkedListNode;

    return-object p0

    :cond_b
    if-ne v0, p0, :cond_12

    .line 683
    invoke-virtual {p0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->findHead()Lio/ktor/util/internal/LockFreeLinkedListNode;

    move-result-object v1

    goto :goto_1a

    :cond_12
    const-string v1, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/ktor/util/internal/LockFreeLinkedListNode;

    :goto_1a
    invoke-virtual {v1}, Lio/ktor/util/internal/LockFreeLinkedListNode;->removed()Lio/ktor/util/internal/Removed;

    move-result-object v1

    .line 684
    sget-object v2, Lio/ktor/util/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lio/ktor/util/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method public remove()Z
    .registers 5

    .line 372
    :cond_0
    invoke-virtual {p0}, Lio/ktor/util/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 374
    instance-of v1, v0, Lio/ktor/util/internal/Removed;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    if-ne v0, p0, :cond_d

    return v2

    .line 378
    :cond_d
    const-string v1, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lio/ktor/util/internal/LockFreeLinkedListNode;

    invoke-virtual {v1}, Lio/ktor/util/internal/LockFreeLinkedListNode;->removed()Lio/ktor/util/internal/Removed;

    move-result-object v2

    .line 379
    sget-object v3, Lio/ktor/util/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v0, v2}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0, v1}, Lio/ktor/util/internal/LockFreeLinkedListNode;->finishRemove(Lio/ktor/util/internal/LockFreeLinkedListNode;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final removed()Lio/ktor/util/internal/Removed;
    .registers 3

    .line 175
    iget-object v0, p0, Lio/ktor/util/internal/LockFreeLinkedListNode;->removedRef:Ljava/lang/Object;

    check-cast v0, Lio/ktor/util/internal/Removed;

    if-nez v0, :cond_10

    new-instance v0, Lio/ktor/util/internal/Removed;

    invoke-direct {v0, p0}, Lio/ktor/util/internal/Removed;-><init>(Lio/ktor/util/internal/LockFreeLinkedListNode;)V

    sget-object v1, Lio/ktor/util/internal/LockFreeLinkedListNode;->removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
