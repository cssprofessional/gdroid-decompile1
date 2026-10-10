package org.tukaani.xz.simple;

import org.tukaani.xz.common.ByteArrayView;

/* JADX INFO: loaded from: classes3.dex */
public final class ARM64 implements SimpleFilter {
    private final boolean isEncoder;
    private int pos;

    public ARM64(boolean z, int i) {
        this.isEncoder = z;
        this.pos = i;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            byte b = bArr[i4 + 3];
            if ((b & 252) == 148) {
                int intLE = ByteArrayView.getIntLE(bArr, i4);
                int i5 = ((this.pos + i4) - i) >>> 2;
                if (!this.isEncoder) {
                    i5 = -i5;
                }
                ByteArrayView.setIntLE(bArr, i4, ((intLE + i5) & 67108863) | (-1811939328));
            } else if ((b & 159) == 144) {
                int intLE2 = ByteArrayView.getIntLE(bArr, i4);
                int i6 = ((intLE2 >>> 29) & 3) | ((intLE2 >>> 3) & 2097148);
                if (((i6 + 131072) & 1835008) == 0) {
                    int i7 = ((this.pos + i4) - i) >>> 12;
                    if (!this.isEncoder) {
                        i7 = -i7;
                    }
                    int i8 = i6 + i7;
                    ByteArrayView.setIntLE(bArr, i4, (intLE2 & (-1879048161)) | ((i8 & 3) << 29) | ((262140 & i8) << 3) | ((-(i8 & 131072)) & 14680064));
                }
            }
            i4 += 4;
        }
        int i9 = i4 - i;
        this.pos += i9;
        return i9;
    }
}
