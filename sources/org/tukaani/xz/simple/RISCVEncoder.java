package org.tukaani.xz.simple;

import org.bouncycastle.asn1.BERTags;
import org.tukaani.xz.common.ByteArrayView;

/* JADX INFO: loaded from: classes3.dex */
public final class RISCVEncoder implements SimpleFilter {
    private int pos;

    public RISCVEncoder(int i) {
        this.pos = i;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 8;
        int i4 = i;
        while (i4 <= i3) {
            int i5 = bArr[i4];
            int i6 = i5 & 255;
            if (i6 == 239) {
                int i7 = i4 + 1;
                int i8 = bArr[i7];
                if ((i8 & 13) == 0) {
                    int i9 = i4 + 2;
                    int i10 = bArr[i9];
                    int i11 = i4 + 3;
                    int i12 = bArr[i11];
                    int i13 = (((i8 & 240) << 8) | ((i10 & 15) << 16) | ((i10 & 16) << 7) | ((i10 & BERTags.FLAGS) >>> 4) | ((i12 & 127) << 4) | ((i12 & 128) << 13)) + ((this.pos + i4) - i);
                    bArr[i7] = (byte) ((i8 & 15) | ((i13 >>> 13) & 240));
                    bArr[i9] = (byte) (i13 >>> 9);
                    bArr[i11] = (byte) (i13 >>> 1);
                    i4 = i9;
                }
            } else if ((i5 & 127) == 23) {
                int i14 = ((bArr[i4 + 1] & 255) << 8) | i6;
                int i15 = i4 + 2;
                int i16 = i14 | ((bArr[i15] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24);
                if ((i16 & 3712) != 0) {
                    i15 = i4 + 4;
                    int intLE = ByteArrayView.getIntLE(bArr, i15);
                    if ((((i16 << 8) ^ intLE) & 1015811) == 3) {
                        int i17 = (i16 & (-4096)) + (intLE >> 20) + ((this.pos + i4) - i);
                        ByteArrayView.setIntLE(bArr, i4, (intLE << 12) | 279);
                        ByteArrayView.setIntBE(bArr, i15, i17);
                        i4 += 6;
                    }
                    i4 = i15;
                } else {
                    int i18 = i16 >>> 27;
                    if (((i16 - 12544) & 16256) < (i18 & 29)) {
                        int i19 = i4 + 4;
                        int intLE2 = ByteArrayView.getIntLE(bArr, i19);
                        ByteArrayView.setIntLE(bArr, i4, 23 | (i18 << 7) | (intLE2 & (-4096)));
                        ByteArrayView.setIntLE(bArr, i19, (i16 >>> 12) | (intLE2 << 20));
                        i4 += 6;
                    }
                    i4 = i15;
                }
            }
            i4 += 2;
        }
        int i20 = i4 - i;
        this.pos += i20;
        return i20;
    }
}
