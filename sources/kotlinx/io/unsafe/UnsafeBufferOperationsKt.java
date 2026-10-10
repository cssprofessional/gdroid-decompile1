package kotlinx.io.unsafe;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Segment;

/* JADX INFO: compiled from: UnsafeBufferOperations.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnsafeBufferOperationsKt {
    public static final SegmentReadContext SegmentReadContextImpl = new SegmentReadContext() { // from class: kotlinx.io.unsafe.UnsafeBufferOperationsKt$SegmentReadContextImpl$1
        @Override // kotlinx.io.unsafe.SegmentReadContext
        public byte getUnchecked(Segment segment, int i) {
            Intrinsics.checkNotNullParameter(segment, "segment");
            return segment.getUnchecked$kotlinx_io_core(i);
        }
    };
    public static final SegmentWriteContext SegmentWriteContextImpl = new SegmentWriteContext() { // from class: kotlinx.io.unsafe.UnsafeBufferOperationsKt$SegmentWriteContextImpl$1
        @Override // kotlinx.io.unsafe.SegmentWriteContext
        public void setUnchecked(Segment segment, int i, byte b) {
            Intrinsics.checkNotNullParameter(segment, "segment");
            segment.setUnchecked$kotlinx_io_core(i, b);
        }

        @Override // kotlinx.io.unsafe.SegmentWriteContext
        public void setUnchecked(Segment segment, int i, byte b, byte b2) {
            Intrinsics.checkNotNullParameter(segment, "segment");
            segment.setUnchecked$kotlinx_io_core(i, b, b2);
        }

        @Override // kotlinx.io.unsafe.SegmentWriteContext
        public void setUnchecked(Segment segment, int i, byte b, byte b2, byte b3) {
            Intrinsics.checkNotNullParameter(segment, "segment");
            segment.setUnchecked$kotlinx_io_core(i, b, b2, b3);
        }

        @Override // kotlinx.io.unsafe.SegmentWriteContext
        public void setUnchecked(Segment segment, int i, byte b, byte b2, byte b3, byte b4) {
            Intrinsics.checkNotNullParameter(segment, "segment");
            segment.setUnchecked$kotlinx_io_core(i, b, b2, b3, b4);
        }
    };
    public static final BufferIterationContext BufferIterationContextImpl = new BufferIterationContext() { // from class: kotlinx.io.unsafe.UnsafeBufferOperationsKt$BufferIterationContextImpl$1
        @Override // kotlinx.io.unsafe.SegmentReadContext
        public byte getUnchecked(Segment segment, int i) {
            Intrinsics.checkNotNullParameter(segment, "segment");
            return UnsafeBufferOperationsKt.SegmentReadContextImpl.getUnchecked(segment, i);
        }
    };
}
