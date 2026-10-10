###### Class kotlinx.coroutines.internal.LockFreeLinkedListHead (kotlinx.coroutines.internal.LockFreeLinkedListHead)
.class public Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "LockFreeLinkedList.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 268
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    return-void
.end method


# virtual methods
.method public isRemoved()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
