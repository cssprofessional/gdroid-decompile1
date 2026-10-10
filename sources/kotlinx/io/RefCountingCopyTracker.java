package kotlinx.io;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SegmentPool.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class RefCountingCopyTracker extends SegmentCopyTracker {
    public static final Companion Companion = new Companion(null);
    public static final AtomicIntegerFieldUpdater<RefCountingCopyTracker> fieldUpdater = AtomicIntegerFieldUpdater.newUpdater(RefCountingCopyTracker.class, "copyCount");
    private volatile int copyCount;

    /* JADX INFO: compiled from: SegmentPool.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    @Override // kotlinx.io.SegmentCopyTracker
    public boolean getShared() {
        return this.copyCount > 0;
    }

    @Override // kotlinx.io.SegmentCopyTracker
    public void addCopy() {
        fieldUpdater.incrementAndGet(this);
    }

    @Override // kotlinx.io.SegmentCopyTracker
    public boolean removeCopy() {
        if (this.copyCount == 0) {
            return false;
        }
        int iDecrementAndGet = fieldUpdater.decrementAndGet(this);
        if (iDecrementAndGet >= 0) {
            return true;
        }
        if (iDecrementAndGet != -1) {
            throw new IllegalStateException(("Shared copies count is negative: " + (iDecrementAndGet + 1)).toString());
        }
        this.copyCount = 0;
        return false;
    }
}
