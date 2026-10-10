package io.ktor.network.selector;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LockFreeMPSCQueue.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LockFreeMPSCQueueCore<E> {
    public static final Companion Companion = new Companion(null);
    public static final Object REMOVE_FROZEN = new Object() { // from class: io.ktor.network.selector.LockFreeMPSCQueueCore$Companion$REMOVE_FROZEN$1
        public String toString() {
            return "REMOVE_FROZEN";
        }
    };
    public static final /* synthetic */ AtomicReferenceFieldUpdater nextRef$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeMPSCQueueCore.class, Object.class, "nextRef");
    public static final /* synthetic */ AtomicLongFieldUpdater stateRef$FU = AtomicLongFieldUpdater.newUpdater(LockFreeMPSCQueueCore.class, "stateRef");
    public final AtomicReferenceArray<Object> array;
    public final int capacity;
    public final int mask;
    private volatile /* synthetic */ Object nextRef = null;
    private volatile /* synthetic */ long stateRef = 0;

    public LockFreeMPSCQueueCore(int i) {
        this.capacity = i;
        int i2 = i - 1;
        this.mask = i2;
        this.array = new AtomicReferenceArray<>(i);
        if (i2 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i & i2) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final boolean isEmpty() {
        long j = this.stateRef;
        return ((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30));
    }

    public final LockFreeMPSCQueueCore<E> fillPlaceholder(int i, E e) {
        Object obj = this.array.get(this.mask & i);
        if (!(obj instanceof Placeholder) || ((Placeholder) obj).index != i) {
            return null;
        }
        this.array.set(i & this.mask, e);
        return this;
    }

    public final LockFreeMPSCQueueCore<E> next() {
        return allocateOrGetNextCopy(markFrozen());
    }

    public final LockFreeMPSCQueueCore<E> allocateNextCopy(long j) {
        LockFreeMPSCQueueCore<E> lockFreeMPSCQueueCore = new LockFreeMPSCQueueCore<>(this.capacity * 2);
        int i = (int) (1073741823 & j);
        int i2 = (int) ((1152921503533105152L & j) >> 30);
        while (true) {
            int i3 = this.mask;
            if ((i & i3) != (i2 & i3)) {
                AtomicReferenceArray<Object> atomicReferenceArray = lockFreeMPSCQueueCore.array;
                int i4 = lockFreeMPSCQueueCore.mask & i;
                Object placeholder = this.array.get(i3 & i);
                if (placeholder == null) {
                    placeholder = new Placeholder(i);
                }
                atomicReferenceArray.set(i4, placeholder);
                i++;
            } else {
                lockFreeMPSCQueueCore.stateRef = Companion.wo(j, 1152921504606846976L);
                return lockFreeMPSCQueueCore;
            }
        }
    }

    /* JADX INFO: compiled from: LockFreeMPSCQueue.kt */
    public static final class Placeholder {
        public final int index;

        public Placeholder(int i) {
            this.index = i;
        }
    }

    /* JADX INFO: compiled from: LockFreeMPSCQueue.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int addFailReason(long j) {
            return (j & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long wo(long j, long j2) {
            return j & (~j2);
        }

        public Companion() {
        }

        public final long updateHead(long j, int i) {
            return wo(j, 1073741823L) | ((long) i);
        }

        public final long updateTail(long j, int i) {
            return wo(j, 1152921503533105152L) | (((long) i) << 30);
        }
    }

    public final boolean close() {
        long j;
        do {
            j = this.stateRef;
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!stateRef$FU.compareAndSet(this, j, j | 2305843009213693952L));
        return true;
    }

    public final int addLast(E element) {
        long j;
        int i;
        Intrinsics.checkNotNullParameter(element, "element");
        do {
            j = this.stateRef;
            if ((3458764513820540928L & j) == 0) {
                i = (int) ((1152921503533105152L & j) >> 30);
                int i2 = this.mask;
                if (((i + 2) & i2) == (((int) (1073741823 & j)) & i2)) {
                    return 1;
                }
            } else {
                return Companion.addFailReason(j);
            }
        } while (!stateRef$FU.compareAndSet(this, j, Companion.updateTail(j, (i + 1) & 1073741823)));
        this.array.set(this.mask & i, element);
        while ((this.stateRef & 1152921504606846976L) != 0 && (this = this.next().fillPlaceholder(i, element)) != null) {
        }
        return 0;
    }

    public final Object removeFirstOrNull() {
        Object obj;
        long j = this.stateRef;
        if ((1152921504606846976L & j) != 0) {
            return REMOVE_FROZEN;
        }
        int i = (int) (1073741823 & j);
        int i2 = this.mask;
        if ((((int) ((1152921503533105152L & j) >> 30)) & i2) == (i & i2) || (obj = this.array.get(i2 & i)) == null || (obj instanceof Placeholder)) {
            return null;
        }
        int i3 = (i + 1) & 1073741823;
        if (stateRef$FU.compareAndSet(this, j, Companion.updateHead(j, i3))) {
            this.array.set(this.mask & i, null);
            return obj;
        }
        do {
            this = this.removeSlowPath(i, i3);
        } while (this != null);
        return obj;
    }

    public final LockFreeMPSCQueueCore<E> removeSlowPath(int i, int i2) {
        long j;
        int i3;
        do {
            j = this.stateRef;
            i3 = (int) (1073741823 & j);
            if (i3 != i) {
                throw new IllegalStateException("This queue can have only one consumer");
            }
            if ((1152921504606846976L & j) != 0) {
                return next();
            }
        } while (!stateRef$FU.compareAndSet(this, j, Companion.updateHead(j, i2)));
        this.array.set(this.mask & i3, null);
        return null;
    }

    public final long markFrozen() {
        long j;
        long j2;
        do {
            j = this.stateRef;
            if ((j & 1152921504606846976L) != 0) {
                return j;
            }
            j2 = j | 1152921504606846976L;
        } while (!stateRef$FU.compareAndSet(this, j, j2));
        return j2;
    }

    public final LockFreeMPSCQueueCore<E> allocateOrGetNextCopy(long j) {
        while (true) {
            LockFreeMPSCQueueCore<E> lockFreeMPSCQueueCore = (LockFreeMPSCQueueCore) this.nextRef;
            if (lockFreeMPSCQueueCore != null) {
                return lockFreeMPSCQueueCore;
            }
            InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(nextRef$FU, this, null, allocateNextCopy(j));
        }
    }
}
