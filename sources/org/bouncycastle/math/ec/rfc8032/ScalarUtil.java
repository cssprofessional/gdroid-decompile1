package org.bouncycastle.math.ec.rfc8032;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import org.bouncycastle.util.Integers;

/* JADX INFO: loaded from: classes3.dex */
abstract class ScalarUtil {
    private static final long M = 4294967295L;

    public static void addShifted_NP(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int[] iArr5 = iArr4;
        int i3 = 0;
        long j = 0;
        if (i2 == 0) {
            long j2 = 0;
            while (i3 <= i) {
                long j3 = ((long) iArr3[i3]) & 4294967295L;
                long j4 = j + (((long) iArr[i3]) & 4294967295L) + j3;
                long j5 = j2 + j3 + (((long) iArr2[i3]) & 4294967295L);
                int i4 = (int) j5;
                j2 = j5 >>> 32;
                iArr3[i3] = i4;
                long j6 = j4 + (((long) i4) & 4294967295L);
                iArr[i3] = (int) j6;
                j = j6 >>> 32;
                i3++;
            }
            return;
        }
        if (i2 < 32) {
            int i5 = 0;
            long j7 = 0;
            long j8 = 0;
            int i6 = 0;
            int i7 = 0;
            while (i3 <= i) {
                int i8 = iArr3[i3];
                int i9 = -i2;
                long j9 = j7 + (((long) iArr[i3]) & 4294967295L) + (((long) ((i5 >>> i9) | (i8 << i2))) & 4294967295L);
                int i10 = iArr2[i3];
                long j10 = j8 + (((long) i8) & 4294967295L) + (((long) ((i6 >>> i9) | (i10 << i2))) & 4294967295L);
                int i11 = (int) j10;
                j8 = j10 >>> 32;
                iArr3[i3] = i11;
                long j11 = j9 + (((long) ((i7 >>> i9) | (i11 << i2))) & 4294967295L);
                iArr[i3] = (int) j11;
                j7 = j11 >>> 32;
                i3++;
                i7 = i11;
                i6 = i10;
                i5 = i8;
            }
            return;
        }
        System.arraycopy(iArr3, 0, iArr5, 0, i);
        int i12 = i2 >>> 5;
        int i13 = i2 & 31;
        if (i13 == 0) {
            long j12 = 0;
            for (int i14 = i12; i14 <= i; i14++) {
                int i15 = i14 - i12;
                long j13 = j + (((long) iArr[i14]) & 4294967295L) + (((long) iArr5[i15]) & 4294967295L);
                long j14 = j12 + (((long) iArr3[i14]) & 4294967295L) + (((long) iArr2[i15]) & 4294967295L);
                iArr3[i14] = (int) j14;
                j12 = j14 >>> 32;
                long j15 = j13 + (((long) iArr3[i15]) & 4294967295L);
                iArr[i14] = (int) j15;
                j = j15 >>> 32;
            }
            return;
        }
        int i16 = i12;
        long j16 = 0;
        long j17 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 <= i) {
            int i19 = i16 - i12;
            int i20 = iArr5[i19];
            int i21 = -i13;
            int i22 = i12;
            long j18 = j16 + (((long) iArr[i16]) & 4294967295L) + (((long) ((i20 << i13) | (i3 >>> i21))) & 4294967295L);
            int i23 = iArr2[i19];
            long j19 = j17 + (((long) iArr3[i16]) & 4294967295L) + (((long) ((i23 << i13) | (i17 >>> i21))) & 4294967295L);
            iArr3[i16] = (int) j19;
            j17 = j19 >>> 32;
            int i24 = iArr3[i19];
            long j20 = j18 + (((long) ((i18 >>> i21) | (i24 << i13))) & 4294967295L);
            iArr[i16] = (int) j20;
            j16 = j20 >>> 32;
            i16++;
            iArr5 = iArr4;
            i18 = i24;
            i17 = i23;
            i3 = i20;
            i12 = i22;
        }
    }

    public static void addShifted_UV(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i3 = i;
        int i4 = i2 >>> 5;
        int i5 = i2 & 31;
        long j = 0;
        if (i5 == 0) {
            long j2 = 0;
            for (int i6 = i4; i6 <= i3; i6++) {
                long j3 = j + (((long) iArr[i6]) & 4294967295L);
                long j4 = j2 + (((long) iArr2[i6]) & 4294967295L);
                int i7 = i6 - i4;
                long j5 = j3 + (((long) iArr3[i7]) & 4294967295L);
                long j6 = j4 + (((long) iArr4[i7]) & 4294967295L);
                iArr[i6] = (int) j5;
                j = j5 >>> 32;
                iArr2[i6] = (int) j6;
                j2 = j6 >>> 32;
            }
            return;
        }
        int i8 = i4;
        int i9 = 0;
        int i10 = 0;
        long j7 = 0;
        while (i8 <= i3) {
            int i11 = i8 - i4;
            int i12 = iArr3[i11];
            int i13 = iArr4[i11];
            int i14 = -i5;
            long j8 = j + (((long) iArr[i8]) & 4294967295L);
            long j9 = j8 + (((long) ((i9 >>> i14) | (i12 << i5))) & 4294967295L);
            long j10 = j7 + (((long) iArr2[i8]) & 4294967295L) + (((long) ((i10 >>> i14) | (i13 << i5))) & 4294967295L);
            iArr[i8] = (int) j9;
            j = j9 >>> 32;
            iArr2[i8] = (int) j10;
            j7 = j10 >>> 32;
            i8++;
            i10 = i13;
            i9 = i12;
            i4 = i4;
            i3 = i;
        }
    }

    public static int getBitLength(int i, int[] iArr) {
        int i2 = iArr[i] >> 31;
        while (i > 0 && iArr[i] == i2) {
            i--;
        }
        return ((i * 32) + 32) - Integers.numberOfLeadingZeros(iArr[i] ^ i2);
    }

    public static int getBitLengthPositive(int i, int[] iArr) {
        while (i > 0 && iArr[i] == 0) {
            i--;
        }
        return ((i * 32) + 32) - Integers.numberOfLeadingZeros(iArr[i]);
    }

    public static boolean lessThan(int i, int[] iArr, int[] iArr2) {
        do {
            int i2 = iArr[i] + Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            int i3 = iArr2[i] + Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            if (i2 < i3) {
                return true;
            }
            if (i2 > i3) {
                return false;
            }
            i--;
        } while (i >= 0);
        return false;
    }

    public static void subShifted_NP(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int[] iArr5 = iArr4;
        int i3 = 0;
        long j = 0;
        if (i2 == 0) {
            long j2 = 0;
            while (i3 <= i) {
                long j3 = ((long) iArr3[i3]) & 4294967295L;
                long j4 = (j + (((long) iArr[i3]) & 4294967295L)) - j3;
                long j5 = (j2 + j3) - (((long) iArr2[i3]) & 4294967295L);
                int i4 = (int) j5;
                j2 = j5 >> 32;
                iArr3[i3] = i4;
                long j6 = j4 - (((long) i4) & 4294967295L);
                iArr[i3] = (int) j6;
                j = j6 >> 32;
                i3++;
            }
            return;
        }
        if (i2 < 32) {
            int i5 = 0;
            long j7 = 0;
            long j8 = 0;
            int i6 = 0;
            int i7 = 0;
            while (i3 <= i) {
                int i8 = iArr3[i3];
                int i9 = -i2;
                long j9 = (j7 + (((long) iArr[i3]) & 4294967295L)) - (((long) ((i5 >>> i9) | (i8 << i2))) & 4294967295L);
                int i10 = iArr2[i3];
                long j10 = (j8 + (((long) i8) & 4294967295L)) - (((long) ((i6 >>> i9) | (i10 << i2))) & 4294967295L);
                int i11 = (int) j10;
                j8 = j10 >> 32;
                iArr3[i3] = i11;
                long j11 = j9 - (((long) ((i7 >>> i9) | (i11 << i2))) & 4294967295L);
                iArr[i3] = (int) j11;
                j7 = j11 >> 32;
                i3++;
                i7 = i11;
                i6 = i10;
                i5 = i8;
            }
            return;
        }
        System.arraycopy(iArr3, 0, iArr5, 0, i);
        int i12 = i2 >>> 5;
        int i13 = i2 & 31;
        if (i13 == 0) {
            long j12 = 0;
            for (int i14 = i12; i14 <= i; i14++) {
                int i15 = i14 - i12;
                long j13 = (j + (((long) iArr[i14]) & 4294967295L)) - (((long) iArr5[i15]) & 4294967295L);
                long j14 = (j12 + (((long) iArr3[i14]) & 4294967295L)) - (((long) iArr2[i15]) & 4294967295L);
                iArr3[i14] = (int) j14;
                j12 = j14 >> 32;
                long j15 = j13 - (((long) iArr3[i15]) & 4294967295L);
                iArr[i14] = (int) j15;
                j = j15 >> 32;
            }
            return;
        }
        int i16 = i12;
        long j16 = 0;
        long j17 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 <= i) {
            int i19 = i16 - i12;
            int i20 = iArr5[i19];
            int i21 = -i13;
            int i22 = i12;
            long j18 = (j16 + (((long) iArr[i16]) & 4294967295L)) - (((long) ((i20 << i13) | (i3 >>> i21))) & 4294967295L);
            int i23 = iArr2[i19];
            long j19 = (j17 + (((long) iArr3[i16]) & 4294967295L)) - (((long) ((i23 << i13) | (i17 >>> i21))) & 4294967295L);
            iArr3[i16] = (int) j19;
            j17 = j19 >> 32;
            int i24 = iArr3[i19];
            long j20 = j18 - (((long) ((i18 >>> i21) | (i24 << i13))) & 4294967295L);
            iArr[i16] = (int) j20;
            j16 = j20 >> 32;
            i16++;
            iArr5 = iArr4;
            i18 = i24;
            i17 = i23;
            i3 = i20;
            i12 = i22;
        }
    }

    public static void subShifted_UV(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i3 = i;
        int i4 = i2 >>> 5;
        int i5 = i2 & 31;
        long j = 0;
        if (i5 == 0) {
            long j2 = 0;
            for (int i6 = i4; i6 <= i3; i6++) {
                long j3 = j + (((long) iArr[i6]) & 4294967295L);
                long j4 = j2 + (((long) iArr2[i6]) & 4294967295L);
                int i7 = i6 - i4;
                long j5 = j3 - (((long) iArr3[i7]) & 4294967295L);
                long j6 = j4 - (((long) iArr4[i7]) & 4294967295L);
                iArr[i6] = (int) j5;
                j = j5 >> 32;
                iArr2[i6] = (int) j6;
                j2 = j6 >> 32;
            }
            return;
        }
        int i8 = i4;
        int i9 = 0;
        int i10 = 0;
        long j7 = 0;
        while (i8 <= i3) {
            int i11 = i8 - i4;
            int i12 = iArr3[i11];
            int i13 = iArr4[i11];
            int i14 = -i5;
            long j8 = j + (((long) iArr[i8]) & 4294967295L);
            long j9 = j8 - (((long) ((i9 >>> i14) | (i12 << i5))) & 4294967295L);
            long j10 = (j7 + (((long) iArr2[i8]) & 4294967295L)) - (((long) ((i10 >>> i14) | (i13 << i5))) & 4294967295L);
            iArr[i8] = (int) j9;
            j = j9 >> 32;
            iArr2[i8] = (int) j10;
            j7 = j10 >> 32;
            i8++;
            i10 = i13;
            i9 = i12;
            i4 = i4;
            i3 = i;
        }
    }
}
