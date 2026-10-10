package io.ktor.network.selector;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LockFreeMPSCQueue.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LockFreeMPSCQueue<E> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater curRef$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeMPSCQueue.class, Object.class, "curRef");
    private volatile /* synthetic */ Object curRef = new LockFreeMPSCQueueCore(8);

    public final boolean isEmpty() {
        return ((LockFreeMPSCQueueCore) this.curRef).isEmpty();
    }

    public final void close() {
        while (true) {
            LockFreeMPSCQueueCore lockFreeMPSCQueueCore = (LockFreeMPSCQueueCore) this.curRef;
            if (lockFreeMPSCQueueCore.close()) {
                return;
            } else {
                InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(curRef$FU, this, lockFreeMPSCQueueCore, lockFreeMPSCQueueCore.next());
            }
        }
    }

    public final boolean addLast(E element) {
        Intrinsics.checkNotNullParameter(element, "element");
        while (true) {
            LockFreeMPSCQueueCore lockFreeMPSCQueueCore = (LockFreeMPSCQueueCore) this.curRef;
            int iAddLast = lockFreeMPSCQueueCore.addLast(element);
            if (iAddLast == 0) {
                return true;
            }
            if (iAddLast == 1) {
                InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(curRef$FU, this, lockFreeMPSCQueueCore, lockFreeMPSCQueueCore.next());
            } else if (iAddLast == 2) {
                return false;
            }
        }
    }

    public final E removeFirstOrNull() {
        while (true) {
            LockFreeMPSCQueueCore lockFreeMPSCQueueCore = (LockFreeMPSCQueueCore) this.curRef;
            E e = (E) lockFreeMPSCQueueCore.removeFirstOrNull();
            if (e != LockFreeMPSCQueueCore.REMOVE_FROZEN) {
                return e;
            }
            InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(curRef$FU, this, lockFreeMPSCQueueCore, lockFreeMPSCQueueCore.next());
        }
    }
}
