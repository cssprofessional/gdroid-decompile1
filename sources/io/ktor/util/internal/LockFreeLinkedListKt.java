package io.ktor.util.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LockFreeLinkedListKt {
    public static final Object CONDITION_FALSE = new Symbol("CONDITION_FALSE");
    public static final Object ALREADY_REMOVED = new Symbol("ALREADY_REMOVED");
    public static final Object LIST_EMPTY = new Symbol("LIST_EMPTY");
    public static final Object REMOVE_PREPARED = new Symbol("REMOVE_PREPARED");
    public static final Object NO_DECISION = new Symbol("NO_DECISION");

    public static final LockFreeLinkedListNode unwrap(Object obj) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Removed removed = obj instanceof Removed ? (Removed) obj : null;
        return (removed == null || (lockFreeLinkedListNode = removed.ref) == null) ? (LockFreeLinkedListNode) obj : lockFreeLinkedListNode;
    }
}
