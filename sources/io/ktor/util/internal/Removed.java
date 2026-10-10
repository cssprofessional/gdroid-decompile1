package io.ktor.util.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Removed {
    public final LockFreeLinkedListNode ref;

    public Removed(LockFreeLinkedListNode ref) {
        Intrinsics.checkNotNullParameter(ref, "ref");
        this.ref = ref;
    }

    public String toString() {
        return "Removed[" + this.ref + ']';
    }
}
