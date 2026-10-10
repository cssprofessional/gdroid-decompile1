package kotlinx.io;

import java.io.EOFException;
import kotlin.jvm.internal.Intrinsics;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: Sources.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class SourcesKt {
    public static /* synthetic */ long indexOf$default(Source source, byte b, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j3 = j;
        if ((i & 4) != 0) {
            j2 = Util.VLI_MAX;
        }
        return indexOf(source, b, j3, j2);
    }

    public static final long indexOf(Source source, byte b, long j, long j2) {
        String str;
        Intrinsics.checkNotNullParameter(source, "<this>");
        if (0 <= j && j <= j2) {
            if (j == j2) {
                return -1L;
            }
            long size = j;
            while (size < j2 && source.request(1 + size)) {
                long jIndexOf = BuffersKt.indexOf(source.getBuffer(), b, size, Math.min(j2, source.getBuffer().getSize()));
                if (jIndexOf != -1) {
                    return jIndexOf;
                }
                size = source.getBuffer().getSize();
            }
            return -1L;
        }
        if (j2 < 0) {
            str = "startIndex (" + j + ") and endIndex (" + j2 + ") should be non negative";
        } else {
            str = "startIndex (" + j + ") is not within the range [0..endIndex(" + j2 + "))";
        }
        throw new IllegalArgumentException(str.toString());
    }

    public static final byte[] readByteArray(Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return readByteArrayImpl(source, -1);
    }

    public static final byte[] readByteArray(Source source, int i) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        long j = i;
        if (j < 0) {
            throw new IllegalArgumentException(("byteCount (" + j + ") < 0").toString());
        }
        return readByteArrayImpl(source, i);
    }

    public static final byte[] readByteArrayImpl(Source source, int i) throws EOFException {
        if (i == -1) {
            for (long j = 2147483647L; source.getBuffer().getSize() < 2147483647L && source.request(j); j *= (long) 2) {
            }
            if (source.getBuffer().getSize() >= 2147483647L) {
                throw new IllegalStateException(("Can't create an array of size " + source.getBuffer().getSize()).toString());
            }
            i = (int) source.getBuffer().getSize();
        } else {
            source.require(i);
        }
        byte[] bArr = new byte[i];
        readTo$default(source.getBuffer(), bArr, 0, 0, 6, null);
        return bArr;
    }

    public static /* synthetic */ void readTo$default(Source source, byte[] bArr, int i, int i2, int i3, Object obj) throws EOFException {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        readTo(source, bArr, i, i2);
    }

    public static final void readTo(Source source, byte[] sink, int i, int i2) throws EOFException {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        _UtilKt.checkBounds(sink.length, i, i2);
        int i3 = i;
        while (i3 < i2) {
            int atMostTo = source.readAtMostTo(sink, i3, i2);
            if (atMostTo == -1) {
                throw new EOFException("Source exhausted before reading " + (i2 - i) + " bytes. Only " + atMostTo + " bytes were read.");
            }
            i3 += atMostTo;
        }
    }
}
