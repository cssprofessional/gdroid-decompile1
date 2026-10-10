package kotlinx.io;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.unsafe.UnsafeBufferOperations;

/* JADX INFO: compiled from: JvmCore.kt */
/* JADX INFO: loaded from: classes3.dex */
public class InputStreamSource implements RawSource {
    public final InputStream input;

    public InputStreamSource(InputStream input) {
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = input;
    }

    @Override // kotlinx.io.RawSource
    public long readAtMostTo(Buffer sink, long j) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j == 0) {
            return 0L;
        }
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount (" + j + ") < 0").toString());
        }
        try {
            UnsafeBufferOperations unsafeBufferOperations = UnsafeBufferOperations.INSTANCE;
            Segment segmentWritableSegment = sink.writableSegment(1);
            int i = 0;
            byte[] bArrDataAsByteArray = segmentWritableSegment.dataAsByteArray(false);
            long j2 = this.input.read(bArrDataAsByteArray, segmentWritableSegment.getLimit(), (int) Math.min(j, bArrDataAsByteArray.length - r4));
            if (j2 != -1) {
                i = (int) j2;
            }
            if (i == 1) {
                segmentWritableSegment.writeBackData(bArrDataAsByteArray, i);
                segmentWritableSegment.setLimit(segmentWritableSegment.getLimit() + i);
                sink.setSizeMut(sink.getSizeMut() + ((long) i));
            } else {
                if (i < 0 || i > segmentWritableSegment.getRemainingCapacity()) {
                    throw new IllegalStateException(("Invalid number of bytes written: " + i + ". Should be in 0.." + segmentWritableSegment.getRemainingCapacity()).toString());
                }
                if (i != 0) {
                    segmentWritableSegment.writeBackData(bArrDataAsByteArray, i);
                    segmentWritableSegment.setLimit(segmentWritableSegment.getLimit() + i);
                    sink.setSizeMut(sink.getSizeMut() + ((long) i));
                } else if (SegmentKt.isEmpty(segmentWritableSegment)) {
                    sink.recycleTail();
                }
            }
            return j2;
        } catch (AssertionError e) {
            if (JvmCoreKt.isAndroidGetsocknameError(e)) {
                throw new IOException(e);
            }
            throw e;
        }
    }

    @Override // kotlinx.io.RawSource, java.lang.AutoCloseable, kotlinx.io.RawSink
    public void close() throws IOException {
        this.input.close();
    }

    public String toString() {
        return "RawSource(" + this.input + ')';
    }
}
