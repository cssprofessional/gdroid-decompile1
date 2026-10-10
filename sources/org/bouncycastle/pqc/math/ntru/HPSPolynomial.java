package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet;

/* JADX INFO: loaded from: classes3.dex */
public class HPSPolynomial extends Polynomial {
    public HPSPolynomial(NTRUHPSParameterSet nTRUHPSParameterSet) {
        super(nTRUHPSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void lift(Polynomial polynomial) {
        short[] sArr = this.coeffs;
        System.arraycopy(polynomial.coeffs, 0, sArr, 0, sArr.length);
        z3ToZq();
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        int length = this.coeffs.length;
        int i = 0;
        while (i < this.params.packDegree() / 8) {
            short[] sArr = this.coeffs;
            int i2 = i * 8;
            int i3 = i * 11;
            int i4 = bArr[i3] & 255;
            byte b = bArr[i3 + 1];
            sArr[i2] = (short) (i4 | ((((short) (b & 255)) & 7) << 8));
            byte b2 = bArr[i3 + 2];
            sArr[i2 + 1] = (short) (((b & 255) >>> 3) | ((((short) (b2 & 255)) & 63) << 5));
            int i5 = ((b2 & 255) >>> 6) | ((((short) (bArr[i3 + 3] & 255)) & 255) << 2);
            byte b3 = bArr[i3 + 4];
            sArr[i2 + 2] = (short) (i5 | ((((short) (b3 & 255)) & 1) << 10));
            int i6 = (b3 & 255) >>> 1;
            byte b4 = bArr[i3 + 5];
            sArr[i2 + 3] = (short) (i6 | ((((short) (b4 & 255)) & 15) << 7));
            int i7 = (b4 & 255) >>> 4;
            byte b5 = bArr[i3 + 6];
            sArr[i2 + 4] = (short) (((((short) (b5 & 255)) & 127) << 4) | i7);
            int i8 = ((b5 & 255) >>> 7) | ((((short) (bArr[i3 + 7] & 255)) & 255) << 1);
            byte b6 = bArr[i3 + 8];
            sArr[i2 + 5] = (short) (i8 | ((((short) (b6 & 255)) & 3) << 9));
            byte b7 = bArr[i3 + 9];
            sArr[i2 + 6] = (short) (((b6 & 255) >>> 2) | ((((short) (b7 & 255)) & 31) << 6));
            sArr[i2 + 7] = (short) (((b7 & 255) >>> 5) | ((((short) (bArr[i3 + 10] & 255)) & 255) << 3));
            i++;
        }
        int iPackDegree = this.params.packDegree() & 7;
        if (iPackDegree == 2) {
            short[] sArr2 = this.coeffs;
            int i9 = i * 8;
            int i10 = i * 11;
            int i11 = bArr[i10] & 255;
            byte b8 = bArr[i10 + 1];
            sArr2[i9] = (short) (i11 | ((((short) (b8 & 255)) & 7) << 8));
            sArr2[i9 + 1] = (short) (((((short) (bArr[i10 + 2] & 255)) & 63) << 5) | ((b8 & 255) >>> 3));
        } else if (iPackDegree == 4) {
            short[] sArr3 = this.coeffs;
            int i12 = i * 8;
            int i13 = i * 11;
            int i14 = bArr[i13] & 255;
            byte b9 = bArr[i13 + 1];
            sArr3[i12] = (short) (i14 | ((((short) (b9 & 255)) & 7) << 8));
            byte b10 = bArr[i13 + 2];
            sArr3[i12 + 1] = (short) (((b9 & 255) >>> 3) | ((((short) (b10 & 255)) & 63) << 5));
            int i15 = ((((short) (bArr[i13 + 3] & 255)) & 255) << 2) | ((b10 & 255) >>> 6);
            byte b11 = bArr[i13 + 4];
            sArr3[i12 + 2] = (short) (i15 | ((((short) (b11 & 255)) & 1) << 10));
            sArr3[i12 + 3] = (short) (((((short) (bArr[i13 + 5] & 255)) & 15) << 7) | ((b11 & 255) >>> 1));
        }
        this.coeffs[length - 1] = 0;
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public byte[] sqToBytes(int i) {
        byte[] bArr = new byte[i];
        short[] sArr = new short[8];
        int i2 = 0;
        while (true) {
            int iPackDegree = this.params.packDegree() / 8;
            short s = HPKE.aead_EXPORT_ONLY;
            if (i2 >= iPackDegree) {
                break;
            }
            int i3 = 0;
            while (i3 < 8) {
                sArr[i3] = (short) Polynomial.modQ(this.coeffs[(i2 * 8) + i3] & s, this.params.q());
                i3++;
                s = HPKE.aead_EXPORT_ONLY;
            }
            int i4 = i2 * 11;
            short s2 = sArr[0];
            bArr[i4] = (byte) (s2 & 255);
            short s3 = sArr[1];
            bArr[i4 + 1] = (byte) ((s2 >>> 8) | ((s3 & 31) << 3));
            int i5 = s3 >>> 5;
            short s4 = sArr[2];
            bArr[i4 + 2] = (byte) (i5 | ((s4 & 3) << 6));
            bArr[i4 + 3] = (byte) ((s4 >>> 2) & 255);
            int i6 = s4 >>> 10;
            short s5 = sArr[3];
            bArr[i4 + 4] = (byte) (((s5 & 127) << 1) | i6);
            short s6 = sArr[4];
            bArr[i4 + 5] = (byte) ((s5 >>> 7) | ((s6 & 15) << 4));
            short s7 = sArr[5];
            bArr[i4 + 6] = (byte) ((s6 >>> 4) | ((s7 & 1) << 7));
            bArr[i4 + 7] = (byte) ((s7 >>> 1) & 255);
            int i7 = s7 >>> 9;
            short s8 = sArr[6];
            bArr[i4 + 8] = (byte) (i7 | ((s8 & 63) << 2));
            short s9 = sArr[7];
            bArr[i4 + 9] = (byte) ((s8 >>> 6) | ((s9 & 7) << 5));
            bArr[i4 + 10] = (byte) (s9 >>> 3);
            i2++;
        }
        int i8 = 0;
        while (true) {
            int i9 = i2 * 8;
            if (i8 >= this.params.packDegree() - i9) {
                break;
            }
            sArr[i8] = (short) Polynomial.modQ(this.coeffs[i9 + i8] & HPKE.aead_EXPORT_ONLY, this.params.q());
            i8++;
        }
        while (i8 < 8) {
            sArr[i8] = 0;
            i8++;
        }
        int iPackDegree2 = this.params.packDegree() & 7;
        if (iPackDegree2 == 2) {
            int i10 = i2 * 11;
            short s10 = sArr[0];
            bArr[i10] = (byte) (s10 & 255);
            short s11 = sArr[1];
            bArr[i10 + 1] = (byte) ((s10 >>> 8) | ((s11 & 31) << 3));
            bArr[i10 + 2] = (byte) ((s11 >>> 5) | ((sArr[2] & 3) << 6));
        } else if (iPackDegree2 == 4) {
            int i11 = i2 * 11;
            short s12 = sArr[0];
            bArr[i11] = (byte) (s12 & 255);
            short s13 = sArr[1];
            bArr[i11 + 1] = (byte) ((s12 >>> 8) | ((s13 & 31) << 3));
            short s14 = sArr[2];
            bArr[i11 + 2] = (byte) ((s13 >>> 5) | ((s14 & 3) << 6));
            bArr[i11 + 3] = (byte) ((s14 >>> 2) & 255);
            int i12 = s14 >>> 10;
            short s15 = sArr[3];
            bArr[i11 + 4] = (byte) (i12 | ((s15 & 127) << 1));
            bArr[i11 + 5] = (byte) ((s15 >>> 7) | ((sArr[4] & 15) << 4));
        }
        return bArr;
    }
}
