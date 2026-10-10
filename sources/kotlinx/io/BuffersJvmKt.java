package kotlinx.io;

import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.unsafe.UnsafeBufferOperations;

/* JADX INFO: compiled from: BuffersJvm.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BuffersJvmKt {
    public static final int readAtMostTo(Buffer buffer, ByteBuffer sink) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (buffer.exhausted()) {
            return -1;
        }
        UnsafeBufferOperations unsafeBufferOperations = UnsafeBufferOperations.INSTANCE;
        if (buffer.exhausted()) {
            throw new IllegalArgumentException("Buffer is empty");
        }
        Segment head = buffer.getHead();
        Intrinsics.checkNotNull(head);
        byte[] bArrDataAsByteArray = head.dataAsByteArray(true);
        int pos = head.getPos();
        int iMin = Math.min(sink.remaining(), head.getLimit() - pos);
        sink.put(bArrDataAsByteArray, pos, iMin);
        if (iMin != 0) {
            if (iMin < 0) {
                throw new IllegalStateException("Returned negative read bytes count");
            }
            if (iMin > head.getSize()) {
                throw new IllegalStateException("Returned too many bytes");
            }
            buffer.skip(iMin);
        }
        return iMin;
    }

    public static final Buffer transferFrom(Buffer buffer, ByteBuffer source) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        int iRemaining = source.remaining();
        while (iRemaining > 0) {
            UnsafeBufferOperations unsafeBufferOperations = UnsafeBufferOperations.INSTANCE;
            Segment segmentWritableSegment = buffer.writableSegment(1);
            byte[] bArrDataAsByteArray = segmentWritableSegment.dataAsByteArray(false);
            int limit = segmentWritableSegment.getLimit();
            int iMin = Math.min(iRemaining, bArrDataAsByteArray.length - limit);
            source.get(bArrDataAsByteArray, limit, iMin);
            iRemaining -= iMin;
            if (iMin == 1) {
                segmentWritableSegment.writeBackData(bArrDataAsByteArray, iMin);
                segmentWritableSegment.setLimit(segmentWritableSegment.getLimit() + iMin);
                buffer.setSizeMut(buffer.getSizeMut() + ((long) iMin));
            } else {
                if (iMin < 0 || iMin > segmentWritableSegment.getRemainingCapacity()) {
                    throw new IllegalStateException(("Invalid number of bytes written: " + iMin + ". Should be in 0.." + segmentWritableSegment.getRemainingCapacity()).toString());
                }
                if (iMin != 0) {
                    segmentWritableSegment.writeBackData(bArrDataAsByteArray, iMin);
                    segmentWritableSegment.setLimit(segmentWritableSegment.getLimit() + iMin);
                    buffer.setSizeMut(buffer.getSizeMut() + ((long) iMin));
                } else if (SegmentKt.isEmpty(segmentWritableSegment)) {
                    buffer.recycleTail();
                }
            }
        }
        return buffer;
    }
}
