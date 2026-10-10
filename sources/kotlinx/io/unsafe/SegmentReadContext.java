package kotlinx.io.unsafe;

import kotlinx.io.Segment;

/* JADX INFO: compiled from: UnsafeBufferOperations.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface SegmentReadContext {
    byte getUnchecked(Segment segment, int i);
}
