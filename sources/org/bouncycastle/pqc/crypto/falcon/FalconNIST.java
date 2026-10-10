package org.bouncycastle.pqc.crypto.falcon;

import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
class FalconNIST {
    int CRYPTO_BYTES;
    private int CRYPTO_PUBLICKEYBYTES;
    private int CRYPTO_SECRETKEYBYTES;
    int LOGN;
    private int N;
    int NONCELEN;
    private FalconCodec codec = new FalconCodec();
    private SecureRandom rand;

    public FalconNIST(int i, int i2, SecureRandom secureRandom) {
        int i3;
        int i4;
        this.rand = secureRandom;
        this.LOGN = i;
        this.NONCELEN = i2;
        int i5 = 1 << i;
        this.N = i5;
        this.CRYPTO_PUBLICKEYBYTES = ((i5 * 14) / 8) + 1;
        if (i == 10) {
            this.CRYPTO_SECRETKEYBYTES = 2305;
            this.CRYPTO_BYTES = 1330;
            return;
        }
        if (i == 9 || i == 8) {
            i3 = i5 * 12;
        } else {
            if (i != 7 && i != 6) {
                i4 = i5 * 2;
                this.CRYPTO_SECRETKEYBYTES = i4 + 1 + i5;
                this.CRYPTO_BYTES = 690;
            }
            i3 = i5 * 14;
        }
        i4 = i3 / 8;
        this.CRYPTO_SECRETKEYBYTES = i4 + 1 + i5;
        this.CRYPTO_BYTES = 690;
    }

    public byte[] crypto_sign(boolean z, byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, int i3) {
        int i4;
        int iComp_encode;
        int i5 = this.N;
        byte[] bArr4 = new byte[i5];
        byte[] bArr5 = new byte[i5];
        byte[] bArr6 = new byte[i5];
        byte[] bArr7 = new byte[i5];
        short[] sArr = new short[i5];
        short[] sArr2 = new short[i5];
        byte[] bArr8 = new byte[48];
        byte[] bArr9 = new byte[this.NONCELEN];
        SHAKE256 shake256 = new SHAKE256();
        FalconSign falconSign = new FalconSign();
        FalconVrfy falconVrfy = new FalconVrfy();
        FalconCommon falconCommon = new FalconCommon();
        FalconCodec falconCodec = this.codec;
        int i6 = this.LOGN;
        int iTrim_i8_decode = falconCodec.trim_i8_decode(bArr4, 0, i6, falconCodec.max_fg_bits[i6], bArr3, i3, this.CRYPTO_SECRETKEYBYTES);
        if (iTrim_i8_decode == 0) {
            throw new IllegalStateException("f decode failed");
        }
        FalconCodec falconCodec2 = this.codec;
        int i7 = this.LOGN;
        int iTrim_i8_decode2 = falconCodec2.trim_i8_decode(bArr5, 0, i7, falconCodec2.max_fg_bits[i7], bArr3, i3 + iTrim_i8_decode, this.CRYPTO_SECRETKEYBYTES - iTrim_i8_decode);
        if (iTrim_i8_decode2 == 0) {
            throw new IllegalStateException("g decode failed");
        }
        int i8 = iTrim_i8_decode + iTrim_i8_decode2;
        FalconCodec falconCodec3 = this.codec;
        int i9 = this.LOGN;
        int iTrim_i8_decode3 = falconCodec3.trim_i8_decode(bArr6, 0, i9, falconCodec3.max_FG_bits[i9], bArr3, i3 + i8, this.CRYPTO_SECRETKEYBYTES - i8);
        if (iTrim_i8_decode3 == 0) {
            throw new IllegalArgumentException("F decode failed");
        }
        if (i8 + iTrim_i8_decode3 != this.CRYPTO_SECRETKEYBYTES - 1) {
            throw new IllegalStateException("full key not used");
        }
        if (!falconVrfy.complete_private(bArr7, 0, bArr4, 0, bArr5, 0, bArr6, 0, this.LOGN, new short[this.N * 2], 0)) {
            throw new IllegalStateException("complete_private failed");
        }
        this.rand.nextBytes(bArr9);
        shake256.inner_shake256_init();
        shake256.inner_shake256_inject(bArr9, 0, this.NONCELEN);
        shake256.inner_shake256_inject(bArr2, i, i2);
        shake256.i_shake256_flip();
        falconCommon.hash_to_point_vartime(shake256, sArr2, 0, this.LOGN);
        this.rand.nextBytes(bArr8);
        shake256.inner_shake256_init();
        shake256.inner_shake256_inject(bArr8, 0, 48);
        shake256.i_shake256_flip();
        falconSign.sign_dyn(sArr, 0, shake256, bArr4, 0, bArr5, 0, bArr6, 0, bArr7, 0, sArr2, 0, this.LOGN, new FalconFPR[this.N * 10], 0);
        int i10 = (this.CRYPTO_BYTES - 2) - this.NONCELEN;
        byte[] bArr10 = new byte[i10];
        if (z) {
            int i11 = this.LOGN;
            bArr10[0] = (byte) (i11 + 32);
            i4 = 1;
            int iComp_encode2 = this.codec.comp_encode(bArr10, 1, i10 - 1, sArr, 0, i11);
            if (iComp_encode2 == 0) {
                throw new IllegalStateException("signature failed to generate");
            }
            iComp_encode = iComp_encode2 + 1;
        } else {
            i4 = 1;
            iComp_encode = this.codec.comp_encode(bArr10, 0, i10, sArr, 0, this.LOGN);
            if (iComp_encode == 0) {
                throw new IllegalStateException("signature failed to generate");
            }
        }
        bArr[0] = (byte) (this.LOGN + 48);
        System.arraycopy(bArr9, 0, bArr, i4, this.NONCELEN);
        System.arraycopy(bArr10, 0, bArr, this.NONCELEN + i4, iComp_encode);
        return Arrays.copyOfRange(bArr, 0, this.NONCELEN + i4 + iComp_encode);
    }

    public byte[][] crypto_sign_keypair(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = this.N;
        byte[] bArr3 = new byte[i3];
        byte[] bArr4 = new byte[i3];
        byte[] bArr5 = new byte[i3];
        short[] sArr = new short[i3];
        byte[] bArr6 = new byte[48];
        SHAKE256 shake256 = new SHAKE256();
        FalconKeyGen falconKeyGen = new FalconKeyGen();
        this.rand.nextBytes(bArr6);
        shake256.inner_shake256_init();
        shake256.inner_shake256_inject(bArr6, 0, 48);
        shake256.i_shake256_flip();
        falconKeyGen.keygen(shake256, bArr3, 0, bArr4, 0, bArr5, 0, null, 0, sArr, 0, this.LOGN);
        int i4 = this.LOGN;
        bArr2[i2] = (byte) (i4 + 80);
        FalconCodec falconCodec = this.codec;
        int i5 = i2 + 1;
        int iTrim_i8_encode = falconCodec.trim_i8_encode(bArr2, i5, this.CRYPTO_SECRETKEYBYTES - 1, bArr3, 0, i4, falconCodec.max_fg_bits[i4]);
        if (iTrim_i8_encode == 0) {
            throw new IllegalStateException("f encode failed");
        }
        int i6 = iTrim_i8_encode + 1;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, i5, i6);
        FalconCodec falconCodec2 = this.codec;
        int i7 = i2 + i6;
        int i8 = this.CRYPTO_SECRETKEYBYTES - i6;
        int i9 = this.LOGN;
        int iTrim_i8_encode2 = falconCodec2.trim_i8_encode(bArr2, i7, i8, bArr4, 0, i9, falconCodec2.max_fg_bits[i9]);
        if (iTrim_i8_encode2 == 0) {
            throw new IllegalStateException("g encode failed");
        }
        int i10 = i6 + iTrim_i8_encode2;
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr2, i7, i10);
        FalconCodec falconCodec3 = this.codec;
        int i11 = i2 + i10;
        int i12 = this.CRYPTO_SECRETKEYBYTES - i10;
        int i13 = this.LOGN;
        int iTrim_i8_encode3 = falconCodec3.trim_i8_encode(bArr2, i11, i12, bArr5, 0, i13, falconCodec3.max_FG_bits[i13]);
        if (iTrim_i8_encode3 == 0) {
            throw new IllegalStateException("F encode failed");
        }
        int i14 = i10 + iTrim_i8_encode3;
        byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr2, i11, i14);
        if (i14 != this.CRYPTO_SECRETKEYBYTES) {
            throw new IllegalStateException("secret key encoding failed");
        }
        int i15 = this.LOGN;
        bArr[i] = (byte) i15;
        if (this.codec.modq_encode(bArr, i + 1, this.CRYPTO_PUBLICKEYBYTES - 1, sArr, 0, i15) == this.CRYPTO_PUBLICKEYBYTES - 1) {
            return new byte[][]{Arrays.copyOfRange(bArr, 1, bArr.length), bArrCopyOfRange, bArrCopyOfRange2, bArrCopyOfRange3};
        }
        throw new IllegalStateException("public key encoding failed");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x006e, code lost:
    
        if (r19.codec.comp_decode(r4, 0, r14, r21, 1, r9) != r9) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int crypto_sign_open(boolean r20, byte[] r21, byte[] r22, byte[] r23, byte[] r24, int r25) {
        /*
            r19 = this;
            r0 = r19
            r5 = r21
            r8 = r23
            int r1 = r0.N
            short[] r7 = new short[r1]
            short[] r6 = new short[r1]
            short[] r4 = new short[r1]
            org.bouncycastle.pqc.crypto.falcon.SHAKE256 r3 = new org.bouncycastle.pqc.crypto.falcon.SHAKE256
            r3.<init>()
            org.bouncycastle.pqc.crypto.falcon.FalconVrfy r2 = new org.bouncycastle.pqc.crypto.falcon.FalconVrfy
            r2.<init>()
            org.bouncycastle.pqc.crypto.falcon.FalconCommon r1 = new org.bouncycastle.pqc.crypto.falcon.FalconCommon
            r1.<init>()
            org.bouncycastle.pqc.crypto.falcon.FalconCodec r9 = r0.codec
            int r12 = r0.LOGN
            int r10 = r0.CRYPTO_PUBLICKEYBYTES
            r15 = 1
            int r16 = r10 + (-1)
            r11 = 0
            r10 = r7
            r13 = r24
            r14 = r25
            r17 = r1
            r1 = r15
            r15 = r16
            int r9 = r9.modq_decode(r10, r11, r12, r13, r14, r15)
            int r10 = r0.CRYPTO_PUBLICKEYBYTES
            int r10 = r10 - r1
            r12 = -1
            if (r9 == r10) goto L3c
            return r12
        L3c:
            int r9 = r0.LOGN
            r13 = 0
            r2.to_ntt_monty(r7, r13, r9)
            int r9 = r5.length
            int r10 = r8.length
            if (r20 == 0) goto L71
            if (r9 < r1) goto L70
            r11 = r5[r13]
            int r14 = r0.LOGN
            int r15 = r14 + 32
            byte r15 = (byte) r15
            if (r11 == r15) goto L52
            goto L70
        L52:
            org.bouncycastle.pqc.crypto.falcon.FalconCodec r11 = r0.codec
            int r9 = r9 - r1
            r15 = 0
            r16 = 1
            r18 = r17
            r1 = r11
            r11 = r2
            r2 = r4
            r20 = r3
            r3 = r15
            r15 = r4
            r4 = r14
            r5 = r21
            r14 = r6
            r6 = r16
            r16 = r7
            r7 = r9
            int r1 = r1.comp_decode(r2, r3, r4, r5, r6, r7)
            if (r1 == r9) goto L8d
        L70:
            return r12
        L71:
            r11 = r2
            r20 = r3
            r15 = r4
            r14 = r6
            r16 = r7
            r18 = r17
            if (r9 < r1) goto Lbe
            org.bouncycastle.pqc.crypto.falcon.FalconCodec r1 = r0.codec
            int r4 = r0.LOGN
            r6 = 0
            r3 = 0
            r2 = r15
            r5 = r21
            r7 = r9
            int r1 = r1.comp_decode(r2, r3, r4, r5, r6, r7)
            if (r1 == r9) goto L8d
            goto Lbe
        L8d:
            r20.inner_shake256_init()
            int r1 = r0.NONCELEN
            r3 = r20
            r2 = r22
            r3.inner_shake256_inject(r2, r13, r1)
            r3.inner_shake256_inject(r8, r13, r10)
            r3.i_shake256_flip()
            int r1 = r0.LOGN
            r2 = r18
            r2.hash_to_point_vartime(r3, r14, r13, r1)
            int r9 = r0.LOGN
            int r0 = r0.N
            short[] r10 = new short[r0]
            r0 = 0
            r4 = 0
            r6 = 0
            r8 = 0
            r2 = r11
            r3 = r14
            r5 = r15
            r7 = r16
            r11 = r0
            int r0 = r2.verify_raw(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            if (r0 != 0) goto Lbd
            return r12
        Lbd:
            return r13
        Lbe:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.falcon.FalconNIST.crypto_sign_open(boolean, byte[], byte[], byte[], byte[], int):int");
    }
}
