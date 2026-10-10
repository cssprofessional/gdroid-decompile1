package kotlinx.io;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Segment.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class SegmentKt {
    public static final int indexOf(Segment segment, byte b, int i, int i2) {
        Intrinsics.checkNotNullParameter(segment, "<this>");
        if (i < 0 || i >= segment.getSize()) {
            throw new IllegalArgumentException(String.valueOf(i).toString());
        }
        if (i > i2 || i2 > segment.getSize()) {
            throw new IllegalArgumentException(String.valueOf(i2).toString());
        }
        int pos = segment.getPos();
        byte[] bArrDataAsByteArray = segment.dataAsByteArray(true);
        while (i < i2) {
            if (bArrDataAsByteArray[pos + i] == b) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static final boolean isEmpty(Segment segment) {
        Intrinsics.checkNotNullParameter(segment, "<this>");
        return segment.getSize() == 0;
    }
}
