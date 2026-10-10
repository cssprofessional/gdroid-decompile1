package kotlinx.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.io.EOFException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.io.internal._Utf8Kt;
import kotlinx.io.unsafe.SegmentReadContext;
import kotlinx.io.unsafe.SegmentWriteContext;
import kotlinx.io.unsafe.UnsafeBufferOperations;
import kotlinx.io.unsafe.UnsafeBufferOperationsKt;
import org.bouncycastle.asn1.BERTags;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: Utf8.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class Utf8Kt {
    public static final void writeString(Sink sink, String string, int i, int i2) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        int i3 = i;
        _UtilKt.checkBounds(string.length(), i3, i2);
        Buffer buffer = sink.getBuffer();
        while (i3 < i2) {
            Ref$IntRef ref$IntRef = new Ref$IntRef();
            char cCharAt = string.charAt(i3);
            ref$IntRef.element = cCharAt;
            if (cCharAt < 128) {
                UnsafeBufferOperations unsafeBufferOperations = UnsafeBufferOperations.INSTANCE;
                Segment segmentWritableSegment = buffer.writableSegment(1);
                SegmentWriteContext segmentWriteContext = UnsafeBufferOperationsKt.SegmentWriteContextImpl;
                int i4 = -i3;
                int iMin = Math.min(i2, segmentWritableSegment.getRemainingCapacity() + i3);
                segmentWriteContext.setUnchecked(segmentWritableSegment, i3 + i4, (byte) ref$IntRef.element);
                i3++;
                while (i3 < iMin) {
                    char cCharAt2 = string.charAt(i3);
                    ref$IntRef.element = cCharAt2;
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    segmentWriteContext.setUnchecked(segmentWritableSegment, i3 + i4, (byte) cCharAt2);
                    i3++;
                }
                int i5 = i4 + i3;
                if (i5 == 1) {
                    segmentWritableSegment.setLimit(segmentWritableSegment.getLimit() + i5);
                    buffer.setSizeMut(buffer.getSizeMut() + ((long) i5));
                } else {
                    if (i5 < 0 || i5 > segmentWritableSegment.getRemainingCapacity()) {
                        throw new IllegalStateException(("Invalid number of bytes written: " + i5 + ". Should be in 0.." + segmentWritableSegment.getRemainingCapacity()).toString());
                    }
                    if (i5 != 0) {
                        segmentWritableSegment.setLimit(segmentWritableSegment.getLimit() + i5);
                        buffer.setSizeMut(buffer.getSizeMut() + ((long) i5));
                    } else if (SegmentKt.isEmpty(segmentWritableSegment)) {
                        buffer.recycleTail();
                    }
                }
            } else {
                if (cCharAt < 2048) {
                    UnsafeBufferOperations unsafeBufferOperations2 = UnsafeBufferOperations.INSTANCE;
                    Segment segmentWritableSegment2 = buffer.writableSegment(2);
                    SegmentWriteContext segmentWriteContext2 = UnsafeBufferOperationsKt.SegmentWriteContextImpl;
                    int i6 = ref$IntRef.element;
                    segmentWriteContext2.setUnchecked(segmentWritableSegment2, 0, (byte) ((i6 >> 6) | BERTags.PRIVATE), (byte) ((i6 & 63) | 128));
                    segmentWritableSegment2.setLimit(segmentWritableSegment2.getLimit() + 2);
                    buffer.setSizeMut(buffer.getSizeMut() + ((long) 2));
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    UnsafeBufferOperations unsafeBufferOperations3 = UnsafeBufferOperations.INSTANCE;
                    Segment segmentWritableSegment3 = buffer.writableSegment(3);
                    SegmentWriteContext segmentWriteContext3 = UnsafeBufferOperationsKt.SegmentWriteContextImpl;
                    int i7 = ref$IntRef.element;
                    segmentWriteContext3.setUnchecked(segmentWritableSegment3, 0, (byte) ((i7 >> 12) | BERTags.FLAGS), (byte) (((i7 >> 6) & 63) | 128), (byte) ((i7 & 63) | 128));
                    segmentWritableSegment3.setLimit(segmentWritableSegment3.getLimit() + 3);
                    buffer.setSizeMut(buffer.getSizeMut() + ((long) 3));
                } else {
                    int i8 = i3 + 1;
                    char cCharAt3 = i8 < i2 ? string.charAt(i8) : (char) 0;
                    int i9 = ref$IntRef.element;
                    if (i9 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        buffer.writeByte((byte) 63);
                        i3 = i8;
                    } else {
                        int i10 = (((i9 & 1023) << 10) | (cCharAt3 & 1023)) + Enums.EProtoAppType.k_EAppTypeBeta_VALUE;
                        UnsafeBufferOperations unsafeBufferOperations4 = UnsafeBufferOperations.INSTANCE;
                        Segment segmentWritableSegment4 = buffer.writableSegment(4);
                        UnsafeBufferOperationsKt.SegmentWriteContextImpl.setUnchecked(segmentWritableSegment4, 0, (byte) ((i10 >> 18) | 240), (byte) (((i10 >> 12) & 63) | 128), (byte) (((i10 >> 6) & 63) | 128), (byte) ((i10 & 63) | 128));
                        segmentWritableSegment4.setLimit(segmentWritableSegment4.getLimit() + 4);
                        buffer.setSizeMut(buffer.getSizeMut() + ((long) 4));
                        i3 += 2;
                    }
                }
                i3++;
            }
        }
        sink.hintEmit();
    }

    public static final String readString(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        source.request(Util.VLI_MAX);
        return commonReadUtf8(source.getBuffer(), source.getBuffer().getSize());
    }

    public static final String readString(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return commonReadUtf8(buffer, buffer.getSize());
    }

    public static final String readString(Source source, long j) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        source.require(j);
        return commonReadUtf8(source.getBuffer(), j);
    }

    public static final String commonReadUtf8(Buffer buffer, long j) throws EOFException {
        if (j == 0) {
            return "";
        }
        UnsafeBufferOperations unsafeBufferOperations = UnsafeBufferOperations.INSTANCE;
        Segment head = buffer.getHead();
        if (head == null) {
            throw new IllegalStateException("Unreacheable");
        }
        SegmentReadContext unused = UnsafeBufferOperationsKt.SegmentReadContextImpl;
        if (head.getSize() >= j) {
            byte[] bArrDataAsByteArray = head.dataAsByteArray(true);
            int pos = head.getPos();
            String strCommonToUtf8String = _Utf8Kt.commonToUtf8String(bArrDataAsByteArray, pos, Math.min(head.getLimit(), ((int) j) + pos));
            buffer.skip(j);
            return strCommonToUtf8String;
        }
        return _Utf8Kt.commonToUtf8String$default(SourcesKt.readByteArray(buffer, (int) j), 0, 0, 3, null);
    }
}
