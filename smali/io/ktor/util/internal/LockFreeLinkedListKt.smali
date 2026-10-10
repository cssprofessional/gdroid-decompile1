###### Class io.ktor.util.internal.LockFreeLinkedListKt (io.ktor.util.internal.LockFreeLinkedListKt)
.class public final Lio/ktor/util/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# static fields
.field public static final ALREADY_REMOVED:Ljava/lang/Object;

.field public static final CONDITION_FALSE:Ljava/lang/Object;

.field public static final LIST_EMPTY:Ljava/lang/Object;

.field public static final NO_DECISION:Ljava/lang/Object;

.field public static final REMOVE_PREPARED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lio/ktor/util/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lio/ktor/util/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/util/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    .line 30
    new-instance v0, Lio/ktor/util/internal/Symbol;

    const-string v1, "ALREADY_REMOVED"

    invoke-direct {v0, v1}, Lio/ktor/util/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/util/internal/LockFreeLinkedListKt;->ALREADY_REMOVED:Ljava/lang/Object;

    .line 33
    new-instance v0, Lio/ktor/util/internal/Symbol;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lio/ktor/util/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/util/internal/LockFreeLinkedListKt;->LIST_EMPTY:Ljava/lang/Object;

    .line 35
    new-instance v0, Lio/ktor/util/internal/Symbol;

    const-string v1, "REMOVE_PREPARED"

    invoke-direct {v0, v1}, Lio/ktor/util/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/util/internal/LockFreeLinkedListKt;->REMOVE_PREPARED:Ljava/lang/Object;

    .line 81
    new-instance v0, Lio/ktor/util/internal/Symbol;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Lio/ktor/util/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/util/internal/LockFreeLinkedListKt;->NO_DECISION:Ljava/lang/Object;

    return-void
.end method

.method public static final unwrap(Ljava/lang/Object;)Lio/ktor/util/internal/LockFreeLinkedListNode;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    instance-of v0, p0, Lio/ktor/util/internal/Removed;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/ktor/util/internal/Removed;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_14

    iget-object v0, v0, Lio/ktor/util/internal/Removed;->ref:Lio/ktor/util/internal/LockFreeLinkedListNode;

    if-nez v0, :cond_17

    :cond_14
    move-object v0, p0

    check-cast v0, Lio/ktor/util/internal/LockFreeLinkedListNode;

    :cond_17
    return-object v0
.end method
