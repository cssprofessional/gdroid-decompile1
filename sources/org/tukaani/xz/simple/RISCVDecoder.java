package org.tukaani.xz.simple;

import org.bouncycastle.asn1.BERTags;
import org.tukaani.xz.common.ByteArrayView;

/* JADX INFO: loaded from: classes3.dex */
public final class RISCVDecoder implements SimpleFilter {
    private int pos;

    public RISCVDecoder(int i) {
        this.pos = i;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5 = (i2 + i) - 8;
        int i6 = i;
        while (i6 <= i5) {
            int i7 = bArr[i6];
            int i8 = i7 & 255;
            if (i8 == 239) {
                int i9 = i6 + 1;
                int i10 = bArr[i9];
                if ((i10 & 13) == 0) {
                    int i11 = i6 + 2;
                    int i12 = i6 + 3;
                    int i13 = ((((i10 & 240) << 13) | ((bArr[i11] & 255) << 9)) | ((bArr[i12] & 255) << 1)) - ((this.pos + i6) - i);
                    bArr[i9] = (byte) ((i10 & 15) | ((i13 >>> 8) & 240));
                    bArr[i11] = (byte) (((i13 >>> 16) & 15) | ((i13 >>> 7) & 16) | ((i13 << 4) & BERTags.FLAGS));
                    bArr[i12] = (byte) (((i13 >>> 13) & 128) | ((i13 >>> 4) & 127));
                    i6 = i11;
                }
            } else if ((i7 & 127) == 23) {
                int i14 = ((bArr[i6 + 1] & 255) << 8) | i8;
                int i15 = i6 + 2;
                int i16 = i14 | ((bArr[i15] & 255) << 16) | ((bArr[i6 + 3] & 255) << 24);
                if ((i16 & 3712) != 0) {
                    i15 = i6 + 4;
                    int intLE = ByteArrayView.getIntLE(bArr, i15);
                    if ((((i16 << 8) ^ intLE) & 1015811) == 3) {
                        i3 = (i16 & (-4096)) + (intLE >>> 20);
                        i4 = (intLE << 12) | 279;
                        ByteArrayView.setIntLE(bArr, i6, i4);
                        ByteArrayView.setIntLE(bArr, i6 + 4, i3);
                        i6 += 6;
                    }
                    i6 = i15;
                } else {
                    int i17 = i16 >>> 27;
                    if (((i16 - 12544) & 16256) < (i17 & 29)) {
                        int intBE = ByteArrayView.getIntBE(bArr, i6 + 4) - ((this.pos + i6) - i);
                        i3 = (i16 >>> 12) | (intBE << 20);
                        i4 = ((intBE + 2048) & (-4096)) | 23 | (i17 << 7);
                        ByteArrayView.setIntLE(bArr, i6, i4);
                        ByteArrayView.setIntLE(bArr, i6 + 4, i3);
                        i6 += 6;
                    }
                    i6 = i15;
                }
            }
            i6 += 2;
        }
        int i18 = i6 - i;
        this.pos += i18;
        return i18;
    }
}
