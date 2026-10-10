package kotlinx.coroutines.internal;

import io.ktor.network.selector.InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;

/* JADX INFO: compiled from: ConcurrentLinkedList.kt */
/* JADX INFO: loaded from: classes3.dex */
public abstract class ConcurrentLinkedListNode<N extends ConcurrentLinkedListNode<N>> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater _next$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater _prev$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public abstract boolean isRemoved();

    public ConcurrentLinkedListNode(N n) {
        this._prev$volatile = n;
    }

    public final Object getNextOrClosed() {
        return _next$volatile$FU.get(this);
    }

    public final N getNext() {
        Object nextOrClosed = getNextOrClosed();
        if (nextOrClosed == ConcurrentLinkedListKt.CLOSED) {
            return null;
        }
        return (N) nextOrClosed;
    }

    public final boolean trySetNext(N n) {
        return InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(_next$volatile$FU, this, null, n);
    }

    public final boolean isTail() {
        return getNext() == null;
    }

    public final N getPrev() {
        return (N) _prev$volatile$FU.get(this);
    }

    public final void cleanPrev() {
        _prev$volatile$FU.set(this, null);
    }

    public final boolean markAsClosed() {
        return InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(_next$volatile$FU, this, null, ConcurrentLinkedListKt.CLOSED);
    }

    public final void remove() {
        Object obj;
        if (DebugKt.getASSERTIONS_ENABLED() && !isRemoved() && !isTail()) {
            throw new AssertionError();
        }
        if (isTail()) {
            return;
        }
        while (true) {
            ConcurrentLinkedListNode aliveSegmentLeft = getAliveSegmentLeft();
            ConcurrentLinkedListNode aliveSegmentRight = getAliveSegmentRight();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _prev$volatile$FU;
            do {
                obj = atomicReferenceFieldUpdater.get(aliveSegmentRight);
            } while (!InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(atomicReferenceFieldUpdater, aliveSegmentRight, obj, ((ConcurrentLinkedListNode) obj) == null ? null : aliveSegmentLeft));
            if (aliveSegmentLeft != null) {
                _next$volatile$FU.set(aliveSegmentLeft, aliveSegmentRight);
            }
            if (!aliveSegmentRight.isRemoved() || aliveSegmentRight.isTail()) {
                if (aliveSegmentLeft == null || !aliveSegmentLeft.isRemoved()) {
                    return;
                }
            }
        }
    }

    public final N getAliveSegmentLeft() {
        N n = (N) getPrev();
        while (n != null && n.isRemoved()) {
            n = (N) _prev$volatile$FU.get(n);
        }
        return n;
    }

    public final N getAliveSegmentRight() {
        ConcurrentLinkedListNode next;
        if (DebugKt.getASSERTIONS_ENABLED() && isTail()) {
            throw new AssertionError();
        }
        N n = (N) getNext();
        Intrinsics.checkNotNull(n);
        while (n.isRemoved() && (next = n.getNext()) != null) {
            n = (N) next;
        }
        return n;
    }
}
