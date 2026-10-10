package kotlinx.io.unsafe;

import kotlinx.io.Segment;

/* JADX INFO: compiled from: UnsafeBufferOperations.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface SegmentWriteContext {
    void setUnchecked(Segment segment, int i, byte b);

    void setUnchecked(Segment segment, int i, byte b, byte b2);

    void setUnchecked(Segment segment, int i, byte b, byte b2, byte b3);

    void setUnchecked(Segment segment, int i, byte b, byte b2, byte b3, byte b4);
}
