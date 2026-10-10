package kotlinx.io;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Buffers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BuffersKt {
    public static final long indexOf(Buffer buffer, byte b, long j, long j2) {
        long size;
        int iIndexOf;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long jMin = Math.min(j2, buffer.getSize());
        _UtilKt.checkBounds(buffer.getSize(), j, jMin);
        if (j == jMin || buffer.getHead() == null) {
            return -1L;
        }
        if (buffer.getSize() - j < j) {
            Segment tail = buffer.getTail();
            size = buffer.getSize();
            while (tail != null && size > j) {
                size -= (long) (tail.getLimit() - tail.getPos());
                if (size <= j) {
                    break;
                }
                tail = tail.getPrev();
            }
            if (size == -1) {
                return -1L;
            }
            while (jMin > size) {
                Intrinsics.checkNotNull(tail);
                iIndexOf = SegmentKt.indexOf(tail, b, Math.max((int) (j - size), 0), Math.min(tail.getSize(), (int) (jMin - size)));
                if (iIndexOf == -1) {
                    size += (long) tail.getSize();
                    tail = tail.getNext();
                    if (tail == null || size >= jMin) {
                        return -1L;
                    }
                }
            }
            throw new IllegalStateException("Check failed.");
        }
        Segment head = buffer.getHead();
        size = 0;
        while (head != null) {
            long limit = ((long) (head.getLimit() - head.getPos())) + size;
            if (limit > j) {
                break;
            }
            head = head.getNext();
            size = limit;
        }
        if (size == -1) {
            return -1L;
        }
        while (jMin > size) {
            Intrinsics.checkNotNull(head);
            iIndexOf = SegmentKt.indexOf(head, b, Math.max((int) (j - size), 0), Math.min(head.getSize(), (int) (jMin - size)));
            if (iIndexOf == -1) {
                size += (long) head.getSize();
                head = head.getNext();
                if (head == null || size >= jMin) {
                    return -1L;
                }
            }
        }
        throw new IllegalStateException("Check failed.");
        return size + ((long) iIndexOf);
    }
}
