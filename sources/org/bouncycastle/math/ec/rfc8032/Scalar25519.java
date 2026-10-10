package org.bouncycastle.math.ec.rfc8032;

import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes3.dex */
abstract class Scalar25519 {
    private static final int L0 = -50998291;
    private static final int L1 = 19280294;
    private static final int L2 = 127719000;
    private static final int L3 = -6428113;
    private static final int L4 = 5343;
    private static final long M08L = 255;
    private static final long M28L = 268435455;
    private static final long M32L = 4294967295L;
    private static final int SCALAR_BYTES = 32;
    static final int SIZE = 8;
    private static final int TARGET_LENGTH = 254;
    private static final int[] L = {1559614445, 1477600026, -1560830762, 350157278, 0, 0, 0, 268435456};
    private static final int[] LSq = {-1424848535, -487721339, 580428573, 1745064566, -770181698, 1036971123, 461123738, -1582065343, 1268693629, -889041821, -731974758, 43769659, 0, 0, 0, 16777216};

    public static boolean checkVar(byte[] bArr, int[] iArr) {
        decode(bArr, iArr);
        return !Nat256.gte(iArr, L);
    }

    public static void decode(byte[] bArr, int[] iArr) {
        Codec.decode32(bArr, 0, iArr, 0, 8);
    }

    public static void getOrderWnafVar(int i, byte[] bArr) {
        Wnaf.getSignedVar(L, i, bArr);
    }

    public static void multiply128Var(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[12];
        Nat256.mul128(iArr, iArr2, iArr4);
        if (iArr2[3] < 0) {
            Nat256.addTo(L, 0, iArr4, 4, 0);
            Nat256.subFrom(iArr, 0, iArr4, 4, 0);
        }
        byte[] bArr = new byte[48];
        Codec.encode32(iArr4, 0, 12, bArr, 0);
        decode(reduce384(bArr), iArr3);
    }

    public static byte[] reduce384(byte[] bArr) {
        long jDecode32 = ((long) Codec.decode32(bArr, 0)) & 4294967295L;
        long jDecode24 = ((long) (Codec.decode24(bArr, 4) << 4)) & 4294967295L;
        long jDecode322 = ((long) Codec.decode32(bArr, 7)) & 4294967295L;
        long jDecode242 = ((long) (Codec.decode24(bArr, 11) << 4)) & 4294967295L;
        long jDecode323 = ((long) Codec.decode32(bArr, 14)) & 4294967295L;
        long jDecode243 = ((long) (Codec.decode24(bArr, 18) << 4)) & 4294967295L;
        long jDecode324 = ((long) Codec.decode32(bArr, 21)) & 4294967295L;
        long jDecode244 = ((long) (Codec.decode24(bArr, 25) << 4)) & 4294967295L;
        long jDecode325 = ((long) Codec.decode32(bArr, 28)) & 4294967295L;
        long jDecode245 = Codec.decode24(bArr, 32) << 4;
        long j = jDecode245 & 4294967295L;
        long jDecode326 = Codec.decode32(bArr, 35);
        long j2 = jDecode326 & 4294967295L;
        long jDecode246 = Codec.decode24(bArr, 39) << 4;
        long j3 = jDecode246 & 4294967295L;
        long jDecode327 = Codec.decode32(bArr, 42);
        long jDecode16 = (((long) (Codec.decode16(bArr, 46) << 4)) & 4294967295L) + ((jDecode327 & 4294967295L) >> 28);
        long j4 = (jDecode327 & M28L) + (j3 >> 28);
        long j5 = (jDecode324 - (jDecode16 * 127719000)) - (j4 * (-6428113));
        long j6 = (jDecode244 - (jDecode16 * (-6428113))) - (j4 * 5343);
        long j7 = (jDecode246 & M28L) + (j2 >> 28);
        long j8 = (jDecode242 - (j4 * (-50998291))) - (j7 * 19280294);
        long j9 = ((jDecode323 - (jDecode16 * (-50998291))) - (j4 * 19280294)) - (j7 * 127719000);
        long j10 = ((jDecode243 - (jDecode16 * 19280294)) - (j4 * 127719000)) - (j7 * (-6428113));
        long j11 = (jDecode326 & M28L) + (j >> 28);
        long j12 = jDecode245 & M28L;
        long j13 = jDecode24 - (j11 * (-50998291));
        long j14 = (jDecode322 - (j7 * (-50998291))) - (j11 * 19280294);
        long j15 = j8 - (j11 * 127719000);
        long j16 = j9 - (j11 * (-6428113));
        long j17 = j10 - (j11 * 5343);
        long j18 = (jDecode325 - (jDecode16 * 5343)) + (j6 >> 28);
        long j19 = j6 & M28L;
        long j20 = j12 + (j18 >> 28);
        long j21 = j18 & M28L;
        long j22 = j21 >>> 27;
        long j23 = j20 + j22;
        long j24 = jDecode32 - (j23 * (-50998291));
        long j25 = (j13 - (j23 * 19280294)) + (j24 >> 28);
        long j26 = j24 & M28L;
        long j27 = (j14 - (j23 * 127719000)) + (j25 >> 28);
        long j28 = j25 & M28L;
        long j29 = (j15 - (j23 * (-6428113))) + (j27 >> 28);
        long j30 = j27 & M28L;
        long j31 = (j16 - (j23 * 5343)) + (j29 >> 28);
        long j32 = j29 & M28L;
        long j33 = j17 + (j31 >> 28);
        long j34 = j31 & M28L;
        long j35 = (j5 - (j7 * 5343)) + (j33 >> 28);
        long j36 = j33 & M28L;
        long j37 = j19 + (j35 >> 28);
        long j38 = j35 & M28L;
        long j39 = j21 + (j37 >> 28);
        long j40 = j37 & M28L;
        long j41 = j39 >> 28;
        long j42 = j39 & M28L;
        long j43 = j41 - j22;
        long j44 = j26 + (j43 & (-50998291));
        long j45 = j28 + (j43 & 19280294) + (j44 >> 28);
        long j46 = j44 & M28L;
        long j47 = j30 + (j43 & 127719000) + (j45 >> 28);
        long j48 = j45 & M28L;
        long j49 = j32 + (j43 & (-6428113)) + (j47 >> 28);
        long j50 = j47 & M28L;
        long j51 = j34 + (j43 & 5343) + (j49 >> 28);
        long j52 = j49 & M28L;
        long j53 = j36 + (j51 >> 28);
        long j54 = j51 & M28L;
        long j55 = j38 + (j53 >> 28);
        long j56 = j53 & M28L;
        long j57 = j40 + (j55 >> 28);
        long j58 = j55 & M28L;
        long j59 = j42 + (j57 >> 28);
        long j60 = j57 & M28L;
        byte[] bArr2 = new byte[64];
        Codec.encode56((j48 << 28) | j46, bArr2, 0);
        Codec.encode56(j50 | (j52 << 28), bArr2, 7);
        Codec.encode56((j56 << 28) | j54, bArr2, 14);
        Codec.encode56((j60 << 28) | j58, bArr2, 21);
        Codec.encode32((int) j59, bArr2, 28);
        return bArr2;
    }

    public static byte[] reduce512(byte[] bArr) {
        long jDecode32 = ((long) Codec.decode32(bArr, 0)) & 4294967295L;
        long jDecode24 = ((long) (Codec.decode24(bArr, 4) << 4)) & 4294967295L;
        long jDecode322 = ((long) Codec.decode32(bArr, 7)) & 4294967295L;
        long jDecode242 = ((long) (Codec.decode24(bArr, 11) << 4)) & 4294967295L;
        long jDecode323 = ((long) Codec.decode32(bArr, 14)) & 4294967295L;
        long jDecode243 = ((long) (Codec.decode24(bArr, 18) << 4)) & 4294967295L;
        long jDecode324 = ((long) Codec.decode32(bArr, 21)) & 4294967295L;
        long jDecode244 = ((long) (Codec.decode24(bArr, 25) << 4)) & 4294967295L;
        long jDecode325 = ((long) Codec.decode32(bArr, 28)) & 4294967295L;
        long jDecode245 = ((long) (Codec.decode24(bArr, 32) << 4)) & 4294967295L;
        long jDecode326 = ((long) Codec.decode32(bArr, 35)) & 4294967295L;
        long jDecode246 = ((long) (Codec.decode24(bArr, 39) << 4)) & 4294967295L;
        long jDecode327 = ((long) Codec.decode32(bArr, 42)) & 4294967295L;
        long jDecode247 = ((long) (Codec.decode24(bArr, 46) << 4)) & 4294967295L;
        long jDecode328 = Codec.decode32(bArr, 49);
        long j = jDecode328 & 4294967295L;
        long jDecode248 = ((long) (Codec.decode24(bArr, 53) << 4)) & 4294967295L;
        long jDecode329 = Codec.decode32(bArr, 56);
        long j2 = jDecode329 & 4294967295L;
        long jDecode249 = ((long) (Codec.decode24(bArr, 60) << 4)) & 4294967295L;
        long j3 = ((long) bArr[63]) & M08L;
        long j4 = jDecode249 + (j2 >> 28);
        long j5 = jDecode329 & M28L;
        long j6 = jDecode325 - (j4 * (-50998291));
        long j7 = (jDecode245 - (j3 * (-50998291))) - (j4 * 19280294);
        long j8 = (jDecode327 - (j3 * (-6428113))) - (j4 * 5343);
        long j9 = ((jDecode246 - (j3 * 127719000)) - (j4 * (-6428113))) - (j5 * 5343);
        long j10 = jDecode248 + (j >> 28);
        long j11 = jDecode328 & M28L;
        long j12 = (((jDecode326 - (j3 * 19280294)) - (j4 * 127719000)) - (j5 * (-6428113))) - (j10 * 5343);
        long j13 = ((jDecode244 - (j5 * (-50998291))) - (j10 * 19280294)) - (j11 * 127719000);
        long j14 = ((j7 - (j5 * 127719000)) - (j10 * (-6428113))) - (j11 * 5343);
        long j15 = (jDecode247 - (j3 * 5343)) + (j8 >> 28);
        long j16 = (j8 & M28L) + (j9 >> 28);
        long j17 = jDecode242 - (j16 * (-50998291));
        long j18 = (jDecode323 - (j15 * (-50998291))) - (j16 * 19280294);
        long j19 = ((jDecode243 - (j11 * (-50998291))) - (j15 * 19280294)) - (j16 * 127719000);
        long j20 = (((jDecode324 - (j10 * (-50998291))) - (j11 * 19280294)) - (j15 * 127719000)) - (j16 * (-6428113));
        long j21 = (j13 - (j15 * (-6428113))) - (j16 * 5343);
        long j22 = (j9 & M28L) + (j12 >> 28);
        long j23 = j12 & M28L;
        long j24 = jDecode322 - (j22 * (-50998291));
        long j25 = j17 - (j22 * 19280294);
        long j26 = j18 - (j22 * 127719000);
        long j27 = j19 - (j22 * (-6428113));
        long j28 = j20 - (j22 * 5343);
        long j29 = j23 + (j14 >> 28);
        long j30 = j14 & M28L;
        long j31 = jDecode24 - (j29 * (-50998291));
        long j32 = j24 - (j29 * 19280294);
        long j33 = j25 - (j29 * 127719000);
        long j34 = j26 - (j29 * (-6428113));
        long j35 = j27 - (j29 * 5343);
        long j36 = ((((j6 - (j5 * 19280294)) - (j10 * 127719000)) - (j11 * (-6428113))) - (j15 * 5343)) + (j21 >> 28);
        long j37 = j21 & M28L;
        long j38 = j36 & M28L;
        long j39 = j38 >>> 27;
        long j40 = j30 + (j36 >> 28) + j39;
        long j41 = jDecode32 - (j40 * (-50998291));
        long j42 = (j31 - (j40 * 19280294)) + (j41 >> 28);
        long j43 = j41 & M28L;
        long j44 = (j32 - (j40 * 127719000)) + (j42 >> 28);
        long j45 = j42 & M28L;
        long j46 = (j33 - (j40 * (-6428113))) + (j44 >> 28);
        long j47 = j44 & M28L;
        long j48 = (j34 - (j40 * 5343)) + (j46 >> 28);
        long j49 = j46 & M28L;
        long j50 = j35 + (j48 >> 28);
        long j51 = j48 & M28L;
        long j52 = j28 + (j50 >> 28);
        long j53 = j50 & M28L;
        long j54 = j37 + (j52 >> 28);
        long j55 = j52 & M28L;
        long j56 = j38 + (j54 >> 28);
        long j57 = j54 & M28L;
        long j58 = j56 >> 28;
        long j59 = j56 & M28L;
        long j60 = j58 - j39;
        long j61 = j43 + (j60 & (-50998291));
        long j62 = j45 + (j60 & 19280294) + (j61 >> 28);
        long j63 = j61 & M28L;
        long j64 = j47 + (j60 & 127719000) + (j62 >> 28);
        long j65 = j62 & M28L;
        long j66 = j49 + (j60 & (-6428113)) + (j64 >> 28);
        long j67 = j64 & M28L;
        long j68 = j51 + (j60 & 5343) + (j66 >> 28);
        long j69 = j66 & M28L;
        long j70 = j53 + (j68 >> 28);
        long j71 = j68 & M28L;
        long j72 = j55 + (j70 >> 28);
        long j73 = j70 & M28L;
        long j74 = j57 + (j72 >> 28);
        long j75 = j72 & M28L;
        long j76 = j59 + (j74 >> 28);
        long j77 = j74 & M28L;
        byte[] bArr2 = new byte[32];
        Codec.encode56(j63 | (j65 << 28), bArr2, 0);
        Codec.encode56((j69 << 28) | j67, bArr2, 7);
        Codec.encode56(j71 | (j73 << 28), bArr2, 14);
        Codec.encode56(j75 | (j77 << 28), bArr2, 21);
        Codec.encode32((int) j76, bArr2, 28);
        return bArr2;
    }

    public static boolean reduceBasisVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int i;
        int i2;
        int[] iArr4;
        int[] iArr5 = new int[16];
        System.arraycopy(LSq, 0, iArr5, 0, 16);
        int[] iArr6 = new int[16];
        Nat256.square(iArr, iArr6);
        iArr6[0] = iArr6[0] + 1;
        int[] iArr7 = new int[16];
        int[] iArr8 = L;
        Nat256.mul(iArr8, iArr, iArr7);
        int[] iArr9 = new int[16];
        int[] iArr10 = new int[4];
        System.arraycopy(iArr8, 0, iArr10, 0, 4);
        int[] iArr11 = new int[4];
        System.arraycopy(iArr, 0, iArr11, 0, 4);
        int[] iArr12 = new int[4];
        iArr12[0] = 1;
        int[] iArr13 = new int[4];
        int[] iArr14 = iArr10;
        int[] iArr15 = iArr11;
        int i3 = 15;
        int i4 = 1016;
        int bitLengthPositive = ScalarUtil.getBitLengthPositive(15, iArr6);
        while (bitLengthPositive > TARGET_LENGTH) {
            int i5 = i4 - 1;
            if (i5 < 0) {
                return false;
            }
            int bitLength = ScalarUtil.getBitLength(i3, iArr7) - bitLengthPositive;
            int i6 = bitLength & (~(bitLength >> 31));
            if (iArr7[i3] < 0) {
                i = bitLengthPositive;
                ScalarUtil.addShifted_NP(i3, i6, iArr5, iArr6, iArr7, iArr9);
                int[] iArr16 = iArr15;
                ScalarUtil.addShifted_UV(3, i6, iArr14, iArr13, iArr16, iArr12);
                iArr4 = iArr16;
                i2 = i3;
            } else {
                i = bitLengthPositive;
                ScalarUtil.subShifted_NP(i3, i6, iArr5, iArr6, iArr7, iArr9);
                i2 = i3;
                iArr4 = iArr15;
                ScalarUtil.subShifted_UV(3, i6, iArr14, iArr13, iArr4, iArr12);
            }
            if (ScalarUtil.lessThan(i2, iArr5, iArr6)) {
                int i7 = i >>> 5;
                i3 = i7;
                bitLengthPositive = ScalarUtil.getBitLengthPositive(i7, iArr5);
                iArr15 = iArr14;
                iArr14 = iArr4;
                int[] iArr17 = iArr13;
                iArr13 = iArr12;
                iArr12 = iArr17;
                int[] iArr18 = iArr6;
                iArr6 = iArr5;
                iArr5 = iArr18;
            } else {
                iArr15 = iArr4;
                i3 = i2;
                bitLengthPositive = i;
            }
            i4 = i5;
        }
        System.arraycopy(iArr15, 0, iArr2, 0, 4);
        System.arraycopy(iArr12, 0, iArr3, 0, 4);
        return true;
    }

    public static void toSignedDigits(int i, int[] iArr) {
        Nat.caddTo(8, (~iArr[0]) & 1, L, iArr);
        Nat.shiftDownBit(8, iArr, 1);
    }
}
