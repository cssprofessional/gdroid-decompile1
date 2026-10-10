package org.bouncycastle.pqc.crypto.crystals.kyber;

import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes3.dex */
class Poly {
    private KyberEngine engine;
    private int eta1;
    private int polyCompressedBytes;
    private Symmetric symmetric;
    private short[] coeffs = new short[256];
    private int eta2 = KyberEngine.getKyberEta2();

    public Poly(KyberEngine kyberEngine) {
        this.engine = kyberEngine;
        this.polyCompressedBytes = kyberEngine.getKyberPolyCompressedBytes();
        this.eta1 = kyberEngine.getKyberEta1();
        this.symmetric = kyberEngine.getSymmetric();
    }

    public static void baseMultMontgomery(Poly poly, Poly poly2, Poly poly3) {
        for (int i = 0; i < 64; i++) {
            int i2 = i * 4;
            short coeffIndex = poly2.getCoeffIndex(i2);
            int i3 = i2 + 1;
            short coeffIndex2 = poly2.getCoeffIndex(i3);
            short coeffIndex3 = poly3.getCoeffIndex(i2);
            short coeffIndex4 = poly3.getCoeffIndex(i3);
            short[] sArr = Ntt.nttZetas;
            int i4 = i + 64;
            Ntt.baseMult(poly, i2, coeffIndex, coeffIndex2, coeffIndex3, coeffIndex4, sArr[i4]);
            int i5 = i2 + 2;
            int i6 = i2 + 3;
            Ntt.baseMult(poly, i5, poly2.getCoeffIndex(i5), poly2.getCoeffIndex(i6), poly3.getCoeffIndex(i5), poly3.getCoeffIndex(i6), (short) (sArr[i4] * (-1)));
        }
    }

    public void addCoeffs(Poly poly) {
        for (int i = 0; i < 256; i++) {
            setCoeffIndex(i, (short) (getCoeffIndex(i) + poly.getCoeffIndex(i)));
        }
    }

    public byte[] compressPoly() {
        int i = 8;
        byte[] bArr = new byte[8];
        byte[] bArr2 = new byte[this.polyCompressedBytes];
        conditionalSubQ();
        int i2 = this.polyCompressedBytes;
        if (i2 == 128) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < 32) {
                int i5 = 0;
                while (i5 < i) {
                    bArr[i5] = (byte) (((((getCoeffIndex((i3 * 8) + i5) << 4) + 1665) * 80635) >> 28) & 15);
                    i5++;
                    i = 8;
                }
                bArr2[i4] = (byte) (bArr[0] | (bArr[1] << 4));
                bArr2[i4 + 1] = (byte) (bArr[2] | (bArr[3] << 4));
                bArr2[i4 + 2] = (byte) (bArr[4] | (bArr[5] << 4));
                bArr2[i4 + 3] = (byte) (bArr[6] | (bArr[7] << 4));
                i4 += 4;
                i3++;
                i = 8;
            }
        } else {
            if (i2 != 160) {
                throw new RuntimeException("PolyCompressedBytes is neither 128 or 160!");
            }
            int i6 = 0;
            for (int i7 = 0; i7 < 32; i7++) {
                for (int i8 = 0; i8 < 8; i8++) {
                    bArr[i8] = (byte) (((((getCoeffIndex((i7 * 8) + i8) << 5) + 1664) * 40318) >> 27) & 31);
                }
                bArr2[i6] = (byte) (bArr[0] | (bArr[1] << 5));
                bArr2[i6 + 1] = (byte) ((bArr[1] >> 3) | (bArr[2] << 2) | (bArr[3] << 7));
                bArr2[i6 + 2] = (byte) ((bArr[3] >> 1) | (bArr[4] << 4));
                bArr2[i6 + 3] = (byte) ((bArr[4] >> 4) | (bArr[5] << 1) | (bArr[6] << 6));
                bArr2[i6 + 4] = (byte) ((bArr[6] >> 2) | (bArr[7] << 3));
                i6 += 5;
            }
        }
        return bArr2;
    }

    public void conditionalSubQ() {
        for (int i = 0; i < 256; i++) {
            setCoeffIndex(i, Reduce.conditionalSubQ(getCoeffIndex(i)));
        }
    }

    public void convertToMont() {
        for (int i = 0; i < 256; i++) {
            setCoeffIndex(i, Reduce.montgomeryReduce(getCoeffIndex(i) * 1353));
        }
    }

    public void decompressPoly(byte[] bArr) {
        int i = 6;
        int i2 = 7;
        int i3 = 5;
        int i4 = 4;
        if (this.engine.getKyberPolyCompressedBytes() == 128) {
            int i5 = 0;
            for (int i6 = 0; i6 < 128; i6++) {
                int i7 = i6 * 2;
                setCoeffIndex(i7, (short) (((((short) (bArr[i5] & 15)) * 3329) + 8) >> 4));
                setCoeffIndex(i7 + 1, (short) (((((short) ((bArr[i5] & 255) >> 4)) * 3329) + 8) >> 4));
                i5++;
            }
            return;
        }
        if (this.engine.getKyberPolyCompressedBytes() != 160) {
            throw new RuntimeException("PolyCompressedBytes is neither 128 or 160!");
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < 32) {
            byte b = bArr[i9];
            byte b2 = (byte) (b & 255);
            byte b3 = bArr[i9 + 1];
            byte b4 = (byte) (((b & 255) >> i3) | ((b3 & 255) << 3));
            byte b5 = (byte) ((b3 & 255) >> 2);
            int i10 = (b3 & 255) >> i2;
            byte b6 = bArr[i9 + 2];
            byte b7 = (byte) (((b6 & 255) << 1) | i10);
            byte b8 = bArr[i9 + 3];
            byte b9 = (byte) (((b6 & 255) >> i4) | ((b8 & 255) << i4));
            byte b10 = (byte) ((b8 & 255) >> 1);
            int i11 = (b8 & 255) >> i;
            byte b11 = bArr[i9 + 4];
            byte[] bArr2 = {b2, b4, b5, b7, b9, b10, (byte) (((b11 & 255) << 2) | i11), (byte) ((b11 & 255) >> 3)};
            i9 += 5;
            for (int i12 = 0; i12 < 8; i12++) {
                setCoeffIndex((i8 * 8) + i12, (short) ((((bArr2[i12] & 31) * KyberEngine.KyberQ) + 16) >> 5));
            }
            i8++;
            i = 6;
            i3 = 5;
            i2 = 7;
            i4 = 4;
        }
    }

    public void fromBytes(byte[] bArr) {
        for (int i = 0; i < 128; i++) {
            int i2 = i * 2;
            int i3 = i * 3;
            setCoeffIndex(i2, (short) (((bArr[i3] & 255) | ((bArr[i3 + 1] & 255) << 8)) & 4095));
            setCoeffIndex(i2 + 1, (short) ((((long) ((bArr[r4] & 255) >> 4)) | ((long) ((bArr[i3 + 2] & 255) << 4))) & 4095));
        }
    }

    public void fromMsg(byte[] bArr) {
        if (bArr.length != 32) {
            throw new RuntimeException("KYBER_INDCPA_MSGBYTES must be equal to KYBER_N/8 bytes!");
        }
        for (int i = 0; i < 32; i++) {
            for (int i2 = 0; i2 < 8; i2++) {
                setCoeffIndex((i * 8) + i2, (short) (((short) (((short) (((bArr[i] & 255) >> i2) & 1)) * (-1))) & 1665));
            }
        }
    }

    public short getCoeffIndex(int i) {
        return this.coeffs[i];
    }

    public short[] getCoeffs() {
        return this.coeffs;
    }

    public void getEta1Noise(byte[] bArr, byte b) {
        byte[] bArr2 = new byte[(this.eta1 * 256) / 4];
        this.symmetric.prf(bArr2, bArr, b);
        CBD.kyberCBD(this, bArr2, this.eta1);
    }

    public void getEta2Noise(byte[] bArr, byte b) {
        byte[] bArr2 = new byte[(this.eta2 * 256) / 4];
        this.symmetric.prf(bArr2, bArr, b);
        CBD.kyberCBD(this, bArr2, this.eta2);
    }

    public void polyInverseNttToMont() {
        setCoeffs(Ntt.invNtt(getCoeffs()));
    }

    public void polyNtt() {
        setCoeffs(Ntt.ntt(getCoeffs()));
        reduce();
    }

    public void polySubtract(Poly poly) {
        for (int i = 0; i < 256; i++) {
            setCoeffIndex(i, (short) (poly.getCoeffIndex(i) - getCoeffIndex(i)));
        }
    }

    public void reduce() {
        for (int i = 0; i < 256; i++) {
            setCoeffIndex(i, Reduce.barretReduce(getCoeffIndex(i)));
        }
    }

    public void setCoeffIndex(int i, short s) {
        this.coeffs[i] = s;
    }

    public void setCoeffs(short[] sArr) {
        this.coeffs = sArr;
    }

    public byte[] toBytes() {
        byte[] bArr = new byte[KyberEngine.KyberPolyBytes];
        conditionalSubQ();
        for (int i = 0; i < 128; i++) {
            int i2 = i * 2;
            short coeffIndex = getCoeffIndex(i2);
            short coeffIndex2 = getCoeffIndex(i2 + 1);
            int i3 = i * 3;
            bArr[i3] = (byte) coeffIndex;
            bArr[i3 + 1] = (byte) ((coeffIndex >> 8) | (coeffIndex2 << 4));
            bArr[i3 + 2] = (byte) (coeffIndex2 >> 4);
        }
        return bArr;
    }

    public byte[] toMsg() {
        byte[] bArr = new byte[KyberEngine.getKyberIndCpaMsgBytes()];
        conditionalSubQ();
        for (int i = 0; i < 32; i++) {
            bArr[i] = 0;
            for (int i2 = 0; i2 < 8; i2++) {
                bArr[i] = (byte) (((byte) (((((((getCoeffIndex((i * 8) + i2) & HPKE.aead_EXPORT_ONLY) << 1) + 1665) * 80635) >> 28) & 1) << i2)) | bArr[i]);
            }
        }
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        int i = 0;
        while (true) {
            short[] sArr = this.coeffs;
            if (i >= sArr.length) {
                stringBuffer.append("]");
                return stringBuffer.toString();
            }
            stringBuffer.append((int) sArr[i]);
            if (i != this.coeffs.length - 1) {
                stringBuffer.append(", ");
            }
            i++;
        }
    }
}
