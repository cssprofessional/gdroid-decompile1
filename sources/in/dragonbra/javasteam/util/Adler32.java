package in.dragonbra.javasteam.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Adler32.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Adler32 {
    private static final int BASE = 65521;
    public static final Adler32 INSTANCE = new Adler32();
    private static final int NMAX = 5552;

    private Adler32() {
    }

    public static final int calculate(byte[] buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        return calculate(0, buffer);
    }

    public static final int calculate(int i, byte[] buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        long j = i & 65535;
        long j2 = (i >>> 16) & 65535;
        int length = buffer.length;
        int i2 = 0;
        while (i2 < length) {
            int iMin = Math.min(length - i2, NMAX);
            int i3 = i2 + iMin;
            while (iMin >= 16) {
                long j3 = j + ((long) (buffer[i2] & 255));
                long j4 = j2 + j3;
                long j5 = j3 + ((long) (buffer[i2 + 1] & 255));
                long j6 = j4 + j5;
                long j7 = j5 + ((long) (buffer[i2 + 2] & 255));
                long j8 = j6 + j7;
                long j9 = j7 + ((long) (buffer[i2 + 3] & 255));
                long j10 = j8 + j9;
                long j11 = j9 + ((long) (buffer[i2 + 4] & 255));
                long j12 = j10 + j11;
                long j13 = j11 + ((long) (buffer[i2 + 5] & 255));
                long j14 = j12 + j13;
                long j15 = j13 + ((long) (buffer[i2 + 6] & 255));
                long j16 = j14 + j15;
                long j17 = j15 + ((long) (buffer[i2 + 7] & 255));
                long j18 = j16 + j17;
                long j19 = j17 + ((long) (buffer[i2 + 8] & 255));
                long j20 = j18 + j19;
                long j21 = j19 + ((long) (buffer[i2 + 9] & 255));
                long j22 = j20 + j21;
                long j23 = j21 + ((long) (buffer[i2 + 10] & 255));
                long j24 = j22 + j23;
                long j25 = j23 + ((long) (buffer[i2 + 11] & 255));
                long j26 = j24 + j25;
                long j27 = j25 + ((long) (buffer[i2 + 12] & 255));
                long j28 = j26 + j27;
                long j29 = j27 + ((long) (buffer[i2 + 13] & 255));
                long j30 = j28 + j29;
                long j31 = j29 + ((long) (buffer[i2 + 14] & 255));
                long j32 = j30 + j31;
                j = j31 + ((long) (buffer[i2 + 15] & 255));
                j2 = j32 + j;
                i2 += 16;
                iMin -= 16;
            }
            for (int i4 = 0; i4 < iMin; i4++) {
                j += (long) (buffer[i2 + i4] & 255);
                j2 += j;
            }
            long j33 = BASE;
            j %= j33;
            j2 %= j33;
            i2 = i3;
        }
        return (int) ((j2 << 16) | j);
    }
}
